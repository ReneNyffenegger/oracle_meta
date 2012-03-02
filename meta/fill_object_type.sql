insert into object_type (name)
select
  distinct lower(object_type) name
from
  dba_objects;
