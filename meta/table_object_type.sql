create table object_type (
  name  varchar2(18) primary key check (name = lower(name))
) organization index;
