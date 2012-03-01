insert into dynamic_performance_view (name, corresponding_gv$_view) 
select
  lower(v.view_name),
  nvl2(gv.view_name, 1, 0)
from
  v$fixed_view_definition  v left join
  v$fixed_view_definition gv on 
                  substr( v.view_name, 3, length( v.view_name)-2) = 
                  substr(gv.view_name, 4, length(gv.view_name)-3) and
                  substr(gv.view_name, 1, 3) = 'GV$'
where
                  substr( v.view_name, 1, 2) =  'V$';
