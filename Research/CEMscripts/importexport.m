function importexport = importexport(file_name)
if exist(strcat(file_name,'.lp'), 'file')
    model = gurobi_read(strcat(file_name,'.lp'));
    params.method = 2;
    result = gurobi(model,params);
    if isfield(result, 'x')
        temp = num2cell(ones(length(result.x),2));
        temp(:,1) = model.varnames;
        temp(:,2) = num2cell(result.x);
        writetable(cell2table(temp),strcat(file_name,'.csv'));
    end
end