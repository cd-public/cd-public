function importsexports = importsexports(n)
for i = 1:n
    importexport(strcat('ex',int2str(i),'_c'))
    importexport(strcat('ex',int2str(i),'_i'))
end