create table installation_file (
  name    varchar2(35),
  dir_id  not null references installation_directory(id),
  --
  primary key (name, dir_id)
)
organization index;
