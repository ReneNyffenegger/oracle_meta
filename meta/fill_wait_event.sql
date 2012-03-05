insert into wait_event(name) 
select lower(name) from v$event_name;
