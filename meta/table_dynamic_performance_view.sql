create table dynamic_performance_view (
  name varchar(30) primary key check (name = lower(name) and substr(name,1,2) = 'v$'),
  corresponding_gv$_view number(1) not null check (corresponding_gv$_view in (0,1))
);
