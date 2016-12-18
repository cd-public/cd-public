function [X,groundtruthh] = samplesequences(N,T,theta)
A = size(theta,1); % size of alphabet
L = size(theta,2); % length of motif
X = zeros(A,N,T); % these are full sequences
pbackground = 1/A*ones(A,1);
ph = 1/(N-L+1)*ones(N-L+1,1);
h = zeros(1,T);
for t=1:T
    % populate sequence according to background model
    for i=1:N
        letter = samplediscrete((zeros(1,A)+(1/A)),1);
        X(letter,i,t) = 1;
    end
    % sample motif start offset
    h(t) = samplediscrete(zeros(1,N-L+1)+(1/(N-L+1)),1);
    % sample motif sequence
    sub = samplemotif(theta,1);
    % put the motif at the chosen offset
    X(:,h(t):h(t)+L-1,t) = sub;
end
groundtruthh = h;