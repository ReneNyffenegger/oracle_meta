create table initialization_parameter (
  name         varchar2( 36) primary key check (name = lower(name)),
  description  varchar2(121)
)
organization index;
