insert into object_privilege (name)
select lower(name) 
  from table_privilege_map;
