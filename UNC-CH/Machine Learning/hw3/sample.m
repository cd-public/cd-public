function new = sample(x,i,j,theta,xi,T,k)
p = conditional(x,i,j,theta,xi,T,k);
cdf = cumsum(p);
r = rand(1,1);
temp = cdf - r;
temp(temp < 0) = 0;
new = find(temp, 1);