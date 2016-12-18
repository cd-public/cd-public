function C = findchanges(seq,parts)
len = size(seq,2)
cs = zeros(iter,len-1);
for i=1:10
    [T,E] = newstart(parts);
    [T,E] = hmmtrain(seq,T,E);
    tmp = hmmviterbi(seq,T,E);
    cs(i,:) = tmp(1:len-1);
    cs(i,:) = cs(i,:) - tmp(2:len);
end
% Enforce consistent sign if possible
ref1 = cs(1,find(c,1))
for i=2:10
    ref2 = cs(i,find(c,i))
    cs(i) = cs(i) * (ref1 + ref2 - 1)
end
C = sum(cs)