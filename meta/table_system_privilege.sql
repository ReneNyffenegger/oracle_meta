create table system_privilege (
  name_without_any   varchar2(32) null check (name_without_any = lower(name_without_any)),
  name_with_any      varchar2(30) null check (name_with_any    = lower(name_with_any   )),
  --
  check (replace(name_with_any, ' any ', ' ') = name_without_any),
  check (name_without_any is not null or name_with_any is not null),
  unique(name_without_any, name_with_any)
);
