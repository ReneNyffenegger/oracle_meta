insert into initialization_parameter (name, description)
select 
  lower(name),
  description
from
  v$parameter;
