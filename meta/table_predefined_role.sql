create table predefined_role (
  name varchar2(30) primary key check (name = lower(name))
) organization index;
