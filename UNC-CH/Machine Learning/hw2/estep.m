function [q,ll] = estep(theta,X)
A = size(theta,1); % size of alphabet
L = size(theta,2); % length of motif
N = size(X,2);     % length of full sequence
T = size(X,3);     % number of examples
q = zeros(N-L+1,T);
ll = 0;
for t=1:T
    xt = X(:,:,t); 
    for h=1:N-L+1
        q(h,t) = logp(xt,h,theta);
    end
    lp = logsum(q(:,t));
    ll = ll + lp;
    q(:,t) = exp(q(:,t) - lp);
end  

function l = logsum(v)
m = max(v); v = v - m;
l = log(sum(exp(v))) + m;