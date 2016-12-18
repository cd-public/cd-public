function h = sample(Theta,cc,vv)
nvisible = size(Theta,1);
nhidden = size(Theta,2);
nsamples = size(vv,2);
assert(size(vv,1) == nhidden); 
assert(size(cc,1) == nvisible);
z = Theta * vv + repmat(cc,[1 nsamples]);
h = sigmoid(z) > rand(size(z));