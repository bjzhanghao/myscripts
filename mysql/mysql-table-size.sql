#�鿴mysql���ݿ���ÿ�����������ռ�ÿռ��С
use information_schema;
select table_schema, table_name, table_rows, data_length, index_length from tables;