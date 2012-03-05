create table wait_event (
  name varchar2(58) primary key check (name = lower(name))
) organization index;
