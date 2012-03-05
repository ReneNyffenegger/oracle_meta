insert into system_privilege (name_without_any, name_with_any) 
with privilege_without_any as (
  select lower(name) name
    from system_privilege_map
   where name not like '% ANY %'
),
privilege_with_any as (
  select lower(name) name
    from system_privilege_map
   where name like '% ANY %'
)
select 
      privilege_without_any.name,
      privilege_with_any   .name
from       
      privilege_with_any full outer join 
      privilege_without_any on replace(privilege_with_any.name, ' any ', ' ') = privilege_without_any.name;
