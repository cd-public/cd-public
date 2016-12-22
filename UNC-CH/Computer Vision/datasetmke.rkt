#lang racket

(require 2htdp/image)

(require lang/posn)

;; Coarse Grid Size
(define res 10)

;; Target resolution
(define pixels 256)

;; Background macro
(define background (square res "solid" "white"))

;; Random Point Generation
(define (rand-posn) (make-posn (random res) (random res)))

;; Fuzzy equality between x and y with "margin" percent margin
(define margin 5)
(define (fuzzeq x y)
  (and (and (< x (* y (+ 1 (/ margin 100)))) (> x (* y (- 1 (/ margin 100))))) (and (< y (* x (+ 1 (/ margin 100)))) (> y (* x (- 1 (/ margin 100)))))))
(define (fuzzeq3 x y z)
  (and (fuzzeq x y) (fuzzeq x z) (fuzzeq y z)))

;; Measures the distance between two points
(define (distance p1 p2)
  (let ([x1 (posn-x p1)] [x2 (posn-x p2)] [y1 (posn-y p1)] [y2 (posn-y p2)])
    (let ([dx (abs (- x1 x2))] [dy (abs (- y1 y2))])
  (sqrt (+ (* dx dx) (* dy dy))))))

;; Three sides equal length
(define (equilateral l)
  (let ([p1 (first l)] [p2 (first (rest l))] [p3 (first (rest (rest l)))])
    (fuzzeq3 (distance p1 p2) (distance p1 p3) (distance p2 p3))))
    
;; At least two sides of equal length - not exactly two
(define (isoceles l)
  (let ([p1 (first l)] [p2 (first (rest l))] [p3 (first (rest (rest l)))])
  (cond
    [(equilateral l) false]
    [(fuzzeq (distance p1 p2) (distance p1 p3)) true]
    [(fuzzeq (distance p1 p2) (distance p2 p3)) true]
    [(fuzzeq (distance p1 p3) (distance p2 p3)) true]
    [else false])))

;; No scalene function as equivlanet to not isoceles

;; Right triangle - one side right angle
(define (right l)
  (let ([p1 (first l)] [p2 (first (rest l))] [p3 (first (rest (rest l)))])
    (let ([x1 (posn-x p1)] [x2 (posn-x p2)] [x3 (posn-x p3)] [y1 (posn-y p1)] [y2 (posn-y p2)] [y3 (posn-x p3)])
      (cond
        [(fuzzeq x1 x2) (or (fuzzeq y1 y3) (fuzzeq y2 y3))]
        [(fuzzeq x1 x3) (or (fuzzeq y1 y2) (fuzzeq y2 y3))]
        [(fuzzeq x2 x3) (or (fuzzeq y1 y2) (fuzzeq y1 y3))]
        [else false]))))

;; Obtuse - one angle greater than 90 degrees
(define (obtuse l)
  (let ([p1 (first l)] [p2 (first (rest l))] [p3 (first (rest (rest l)))])
    (let ([s1 (distance p1 p2)] [s2 (distance p1 p3)] [s3 (distance p2 p3)])
      (let ([a1 (* s1 s1)] [a2 (* s2 s2)] [a3 (* s3 s3)])
        (cond
          [(= a1 (max a1 a2 a3)) (> (* a1 (- 1 (/ margin 100))) (+ a2 a3))]
          [(= a2 (max a1 a2 a3)) (> (* a2 (- 1 (/ margin 100))) (+ a1 a3))]
          [else (> (* a3 (- 1 (/ margin 100))) (+ a1 a2))])))))

(define (acute l)
  (not (or (obtuse l) (right l))))

;; Batch test 3points and output as a binary code
(define (tests l)
  (string-append (if (equilateral l) "1 " "0 ")
                 (if (isoceles l) "1 " "0 ")
                 (if (or (isoceles l) (equilateral l)) "0 " "1 ")
                 (if (right l) "1 " "0 ")
                 (if (obtuse l) "1 " "0 ")
                 (if (acute l) "1" "0")))

;; Scale the image from the course grid to the desired size
(define (sizeconvert i)
  (scale (/ pixels res) i))

;; Draws a random triangle
(define (rand-tri)
  (let ([3points (list (rand-posn) (rand-posn) (rand-posn))])
  (cons (tests 3points) (sizeconvert (overlay (polygon 3points "solid" "black") background)))))

;; Draws n random triangles
(define (rand-tris n)
  (if (= n 0) empty (cons (rand-tri) (rand-tris (- n 1)))))

;; Equilateral generator, because we needed more
(define (rand-eq)
  (let ([p1x (random res)] [p1y (random res)][p2x (random res)] [p2y (random res)] [m (/ (sqrt 3) 2)])
    (let ([p3 (make-posn (- (/ (+ p1x p2x) 2) (* m (- p1y p2y))) (+ (/ (+ p1y p2y) 2) (* m (- p1x p2x))))])
      (let ([3points (list (make-posn p1x p1y) (make-posn p2x p2y) p3)])
        (cons (tests 3points) (sizeconvert (overlay (polygon 3points "solid" "black") background)))))))

(define (rand-eqs n)
  (if (= n 0) empty (cons (rand-eq) (rand-eqs (- n 1)))))

;; "Fixed" rand-tris
(define (rand-trisf n)
  (append (rand-eqs (/ n 100)) (rand-tris (- n (/ n 100)))))

;; Dataset generation
(define (split ts)
  (cons (map car ts) (map cdr ts)))

(define (image-saver l n)
  (cond
    [(empty? l) #t]
    [else (and (save-image (first l) (string->path (string-append "dataset/tri" (number->string n) ".png"))) (image-saver (rest l) (+ 1 n)))]))

(define (saver l)
  (and (display-lines-to-file (car l) (string->path "dataset/tags.csv")) (image-saver (cdr l) 1)))

(define (create-dataset n)
  (saver (split (rand-tris n))))

