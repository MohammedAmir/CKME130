proc import out = my_data
datafile = "\\Client\e$\DOCS\CKME130\Assignment1\exec_time_format_i.csv"
dbms = csv replace; getnames=yes;
run;

proc univariate data = my_data normal;
by input_type;
run;

proc univariate data = method;
histogram grade;
by method;
run;
