create function installation_directory_path(id_ in varchar2) return varchar2
is
  complete_path     varchar2(4000);
  oracle_home       varchar2( 100);
begin

   sys.dbms_system.get_env('ORACLE_HOME', oracle_home);

   select name into complete_path
     from installation_directory
    where id = id_;

   complete_path := replace(complete_path, '?', oracle_home);
   complete_path := replace(complete_path, '/', '&path_separator');

   return complete_path;

end;
/
