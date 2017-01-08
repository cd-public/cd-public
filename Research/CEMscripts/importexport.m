function importexport = importexport(file_name)
model = gurobi_read(strcat(file_name,'.lp'));
result = gurobi(model);
temp = num2cell(ones(length(result.x),2));
temp(:,1) = model.varnames;
temp(:,2) = num2cell(result.x);
writetable(cell2table(temp),strcat(file_name,'.csv'));