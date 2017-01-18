function importexport = importexport(file_name)
if exist(strcat(file_name,'_c.lp'), 'file')
    model = gurobi_read(strcat(file_name,'_c.lp'));
    params.method = 2;
    result = gurobi(model,params);
    if isfield(result, 'x')
        temp = num2cell(ones(length(result.x),2));
        temp(:,1) = model.varnames;
        temp(:,2) = num2cell(result.x);
        writetable(cell2table(temp),strcat(file_name,'_c.csv'));
    end
end
if exist(strcat(file_name,'_i.lp'), 'file')
    model = gurobi_read(strcat(file_name,'_i.lp'));
    params.method = 2;
    result = gurobi(model,params);
    if isfield(result, 'objval')
        fid = fopen(strcat(file_name,'_i.out'),'wt');
        fprintf(fid, '%f\n', result.objval);
        fclose(fid);
    end
end