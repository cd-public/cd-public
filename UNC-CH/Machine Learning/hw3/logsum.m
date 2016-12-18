function l = logsum(v)
m = max(v); v = v - m;
l = log(sum(exp(v))) + m;