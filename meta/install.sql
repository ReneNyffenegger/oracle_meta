prompt enter password for sys
accept sys_password hide
connect sys/&sys_password as sysdba

@drop_user_meta_if_exists
@create_user_meta

@grants

prompt user META created.

----------------------------------

connect meta/meta

set verify off
@defines

----------------------------------

@table_topic

prompt Table topic installed, filling topics:

@topics
