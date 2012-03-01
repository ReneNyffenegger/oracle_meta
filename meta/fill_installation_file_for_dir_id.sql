column                                   installation_directory_path new_value complete_path

select installation_directory_path('&1') installation_directory_path from dual;

define file_with_insert_statements=&temp_dir&path_separator.file_installation_file_for_dir_id.sql
$@del &file_with_insert_statements 2> nul
$@for /F " usebackq delims==" %i IN (`dir /b &complete_path`) do @echo insert into installation_file^(name, dir_id) values ^('%i', '&1'); >> &file_with_insert_statements
@&file_with_insert_statements
