insert into statistic (
  name                      ,
  ------------------------- 
  user_                     ,
  redo_                     ,
  enqueue_                  ,
  cache_                    ,
  os_                       ,
  real_application_cluster_ ,
  sql_                      ,
  debug_                    ,
  -------------------------
  timed_statistic_necessary_
)
select
  name,
  case when bitand(class,   1) = 0 then 0 else 1 end,
  --------------------------------------------------
  case when bitand(class,   2) = 0 then 0 else 1 end,
  case when bitand(class,   4) = 0 then 0 else 1 end,
  case when bitand(class,   8) = 0 then 0 else 1 end,
  case when bitand(class,  16) = 0 then 0 else 1 end,
  case when bitand(class,  32) = 0 then 0 else 1 end,
  case when bitand(class,  64) = 0 then 0 else 1 end,
  case when bitand(class, 128) = 0 then 0 else 1 end,
  --------------------------------------------------
  case when name in (
     'change write time',
     'CPU used by this session',
     'CPU used when call started',
     'parse time cpu',
     'parse time elapsed',
     'process last non-idle time',
     'redo log space wait time',
     'redo synch time',
     'redo write broadcast ack time',
     'redo write time',
     'session connect time'
  ) then 1 else 0 end
from
  v$statname;
