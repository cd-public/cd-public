function img = showfilters(theta)
nv = size(theta,1);
d = sqrt(nv);
nf = size(theta,2);
c = ceil(sqrt(nf));
theta = theta - min(theta(:));
theta = theta./max(theta(:));
img = zeros(c*(d+1) + 1, c*(d+1) + 1);
for i=1:c
    for j=1:c
        idx = (i-1)*c + j;
        filter = reshape(theta(:,idx),[d d]);
        posy = (i-1)*(d+1) + 1;
        posx = (j-1)*(d+1) + 1;
        img(posy:posy+d-1,posx:posx+d-1) = filter;
    end
end
