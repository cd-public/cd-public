function lp = logpf(x,theta)
A = size(theta,1); % size of alphabet
L = size(theta,2); % length of motif
assert(size(x,1) == A && size(x,2) == L);
lp = sum(log(sum(times(x,theta))));
