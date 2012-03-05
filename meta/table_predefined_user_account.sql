create table predefined_user_account (
  name varchar2(30) primary key check (name = lower(name))
) organization index;
