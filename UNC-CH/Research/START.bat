set startTime=%time%
ebmc44 or1200_top.sv --top or1200_top --reset reset==1 --trace >out_nofix_reset.txt
echo %startTime% %time% >timer_nofix_reset.txt