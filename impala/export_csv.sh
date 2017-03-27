#Export impala query result to a csv file
impala-shell -i hostname -B -o output.csv --output_delimiter=',' -q "select ..."