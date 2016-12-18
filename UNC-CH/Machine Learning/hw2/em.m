function [theta,q] = em(X,L,iterations)
A = size(X,1); % size of alphabet
N = size(X,2); % length of full sequence
T = size(X,3); % number of examples
theta = randomtheta(A,L);
theta = theta./repmat(sum(theta),[A 1]);
for it=1:iterations
    [q,ll] = estep(theta,X);
    lls(it) = ll;
    theta = mstep(A,L,q,X);
    plot(lls)
    xlabel('iterations');ylabel('log-likelihood');
    drawnow
end