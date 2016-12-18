function lp = logp(x,h,theta)
A = size(theta,1); % size of alphabet
L = size(theta,2); % length of motif
N = size(x,2);     % length of full sequence
lp = log(1/(N-L+1)) + log((1/A)^(N-L-1)) + logpf(x(:,h:h+L-1),theta);