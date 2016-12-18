function [bestx,mean,afterb,var] = newgibbs(theta,xi,T,k,y)
% initialize x with noisy image
x = y;
mean = zeros(size(x,1),size(x,2));
afterb = zeros(size(x,1),size(x,2));
bestx = x;
bestenergy = energy(theta,xi,T,x);
b = 10;
numit = 100;
% experiment with different iteration number
for it=1:numit
    for i=1:size(x,1)
        for j=1:size(x,2)
            x(i,j) = sample(x,i,j,theta,xi,T,k);
        end
    end
    mean = mean + x;
    if it>b
        afterb = afterb + x;
    end
    energies(it) = energy(theta,xi,T,x);
    if energies(it) < bestenergy
        bestenergy = energies(it);
        bestx = x;
    end
end
mean = mean / numit;
afterb = afterb / (numit - b);
var = (afterb - (sum(sum(afterb)) / (size(x,1)*size(x,2)))).^2;