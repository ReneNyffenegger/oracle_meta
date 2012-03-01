create table installation_directory (
  name              varchar2(100) primary key,
  id                varchar2( 30) null unique,
  parent_directory  null references installation_directory
)
organization index;

comment on column installation_directory.id is 'The identifier to be used in ''create directory''';
