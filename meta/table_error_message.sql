create table error_message (
  name        varchar2(  9) primary key check (name = lower(name)),
  description varchar2(390)
);
