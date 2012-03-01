--
-- '?' is supposed to represent ORACLE_HOME
--
insert into installation_directory (name, id, parent_directory) values ('?'               ,  null          , null);

insert into installation_directory (name, id, parent_directory) values ('?/RDBMS'         ,  null          , '?');
insert into installation_directory (name, id, parent_directory) values ('?/RDBMS/ADMIN'   , 'rdbms_admin'  , '?/RDBMS');

insert into installation_directory (name, id, parent_directory) values ('?/sqlplus'       ,  null          , '?');
insert into installation_directory (name, id, parent_directory) values ('?/sqlplus/admin' , 'sqlplus_admin', '?/sqlplus');
