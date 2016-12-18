function theta = randomtheta(A,L)
theta = rand(A,L);
theta = theta.^10;
theta = theta./repmat(sum(theta),[A 1]);