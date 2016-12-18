function gibbs(theta,xi,T,k,y)
% initialize x with noisy image
x = y;
total = zeros(size(x,1),size(x,2));
afterb = zeros(size(x,1),size(x,2));
bestx = x;
bestenergy = energy(theta,xi,T,x);
b = 10;
% experiment with different iteration number
for it=1:100
    for i=1:size(x,1)
        for j=1:size(x,2)
            x(i,j) = sample(x,i,j,theta,xi,T,k);
        end
    end
    total = total + x;
    if it>b
        afterb = afterb + x;
    end
    figure(1);
    subplot(2,1,1);
    imagesc(x);
    energies(it) = energy(theta,xi,T,x);
    if energies(it) < bestenergy
        bestenergy = energies(it);
        bestx = x;
    end
    subplot(2,1,2);
    plot(energies(5:it));
    drawnow;
end