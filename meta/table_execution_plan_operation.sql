create table execution_plan_operation (
  name_operation varchar2(23) not null,
  name_option    varchar2(22)     null,
  --
  unique (name_operation, name_option)
);
