create table statistic (
  name                        varchar2(100) primary key,
  ---------------------------------------------------------------------------------------------
  user_                       number  (  1) not null check(user_                      in (0,1)),
  redo_                       number  (  1) not null check(redo_                      in (0,1)),
  enqueue_                    number  (  1) not null check(enqueue_                   in (0,1)),
  cache_                      number  (  1) not null check(cache_                     in (0,1)),
  os_                         number  (  1) not null check(os_                        in (0,1)),
  real_application_cluster_   number  (  1) not null check(real_application_cluster_  in (0,1)),
  sql_                        number  (  1) not null check(sql_                       in (0,1)),
  debug_                      number  (  1) not null check(debug_                     in (0,1)),
  ---------------------------------------------------------------------------------------------
  timed_statistic_necessary_  number  (  1) not null check(timed_statistic_necessary_ in (0,1))
) organization index;


comment on column statistic.timed_statistic_necessary_ is '1 indicates that initialization parameter timed_statistics must be set to true in order to populate respective statistic.';
