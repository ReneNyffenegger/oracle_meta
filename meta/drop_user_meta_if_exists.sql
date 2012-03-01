declare
  count_meta number;
begin
  select count(*) Into count_meta from dba_users where username = 'META';

  if count_meta > 0 then
     execute immediate 'drop user meta cascade';
  end if;
end;
/
