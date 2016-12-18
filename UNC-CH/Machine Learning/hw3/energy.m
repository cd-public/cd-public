function E = energy(theta,psi,T,x)
E = 0;
height = size(x,1);
width = size(x,2);
for i=1:height
    for j=1:width
        % unary energy terms are specific to (i,j)
        E = E + psi(x(i,j),i,j);
        if i>1
           E = E + theta(x(i,j),x(i-1,j));
        end
        if j>1
           E = E + theta(x(i,j),x(i,j-1));
        end
    end
end