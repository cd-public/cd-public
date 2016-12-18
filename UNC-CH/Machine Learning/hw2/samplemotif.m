function X = samplemotif(theta,T)
A = size(theta,1); % size of alphabet
L = size(theta,2); % length of motif
% does each column sum to 1
assert(all(abs(sum(theta,1) - 1.0)<1e-6))
% are all probabilities greater than 0
assert(all(theta(:)>0))
X = zeros(A,L,T);
for t=1:T
    for i=1:L
        % drawn a single letter according to theta(:,i)
        letter = samplediscrete(theta(:,i),A);
        X(letter,i,t) = 1;
    end
end  