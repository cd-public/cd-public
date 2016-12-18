function p = conditional(x,i,j,theta,xi,T,k)
% x is the current configuration
% i,j are coordinates of variable to update
% theta and xi are energy functions
% T is temperature
% k is the size of state space for each x(i,j)
width = size(x,2);
height = size(x,1);
g = zeros(k,1);
if i>1
   g = g + theta((1:k)',x(i-1,j));
end
if i<height
    g = g + theta((1:k)',x(i+1,j));
end
if j>1
    g = g + theta((1:k)',x(i,j-1));
end
if j<width
    g = g + theta((1:k)',x(i,j+1));
end
g = g + xi((1:k)',i,j);
logp = -1/T*g;
logp = logp - logsum(logp);
p = exp(logp);