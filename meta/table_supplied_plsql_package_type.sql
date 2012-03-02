create table supplied_plsql_package_type (
  name varchar2(30) primary key check (name = lower(name))
) organization index;
