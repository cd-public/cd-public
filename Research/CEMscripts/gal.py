from functools import reduce
def lcm(a, b):
    if a > b:
        greater = a
    else:
        greater = b

    while True:
        if greater % a == 0 and greater % b == 0:
            lcm = greater
            break
        greater += 1

    return lcm

def lcms(your_list):
    return reduce(lambda x, y: lcm(x, y), your_list)
	

def gcd(a,b):
	if b > a:
		t = a
		a = b
		b = t
	while b > 0:
		t = a % b
		a = b
		b = t
	return a


def gcds(your_list):	
    return reduce(lambda x, y: gcd(x, y), your_list)
	
def factors(n):    
    return set(reduce(list.__add__, 
        ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))