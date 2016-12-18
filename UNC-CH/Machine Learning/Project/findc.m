function [all,pos,neg] = findc(seq)
iter = 20;
len = size(seq,2);
cs = zeros(iter,len-1);
parts = max(seq);
for i=1:iter
    [T,E] = newstart(parts);
    [T,E] = hmmtrain(seq,T,E);
    tmp = hmmviterbi(seq,T,E);
    cs(i,:) = tmp(1:len-1);
    cs(i,:) = cs(i,:)-tmp(2:len);
end
% Try for consistent signs
for i=1:iter
    sign = cs(i,find(cs(i,:),1));
    cs(i,:) =  sign * cs(i,:);
end
% Find agreement of 95+%
tol = .95;
c = fix(sum(cs)/(tol*iter));
all = find(c);
pos = find(c > 0);
neg = find(c < 0);