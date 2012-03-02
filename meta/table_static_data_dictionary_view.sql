create table static_data_dictionary_view (
  name  varchar2(30) primary key check (name = lower(name)),
  dba_  number(1) not null check (dba_ in (0,1)),
  all_  number(1) not null check (all_ in (0,1)),
  usr_  number(1) not null check (usr_ in (0,1))
)
organization index;

comment on column static_data_dictionary_view.dba_ is '1 indicates the presence of a correspinding dba_* view' ;
comment on column static_data_dictionary_view.all_ is '1 indicates the presence of a correspinding all_* view' ;
comment on column static_data_dictionary_view.usr_ is '1 indicates the presence of a correspinding user_* view';
