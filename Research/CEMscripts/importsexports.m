function importsexports = importsexports(n)
for i = 1:n
    importexport(strcat('ex',int2str(i)))
end