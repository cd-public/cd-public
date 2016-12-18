function cs = findc(seq,parts)
iter = 10;
len = size(seq,2);
cs = zeros(iter,len-1);
for i=1:iter
    [T,E] = newstart(parts);
    [T,E] = hmmtrain(seq,T,E);
    tmp = hmmviterbi(seq,T,E);
    cs(i,:) = tmp(1:len-1);
    cs(i,:) = cs(i,:)-tmp(2:len);
end
% Try for consistent signs
sign1 = cs(1,find(cs(1,:),1))
for i=2:iter
    sign2 = cs(find(cs(i,:),1))
    m = abs(sign1+sign2)-1
    cs(i) =  m * cs(i);
end