create table object_privilege (
  name varchar2(17) primary key check (name = lower(name))
) organization index;
