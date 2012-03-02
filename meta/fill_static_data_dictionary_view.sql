insert into static_data_dictionary_view (name, dba_, all_, usr_)
with dba_ as ( select substr(view_name, 5) view_name, 1 is_present from dba_views where substr(view_name,1,4) = 'DBA_' ),
     all_ as ( select substr(view_name, 5) view_name, 1 is_present from dba_views where substr(view_name,1,4) = 'ALL_' ),
     usr_ as ( select substr(view_name, 6) view_name, 1 is_present from dba_views where substr(view_name,1,5) = 'USER_')
select
  lower(view_name)        name,
  nvl(dba_.is_present, 0) dba_,
  nvl(all_.is_present, 0) all_,
  nvl(usr_.is_present, 0) usr_
from
  dba_ full outer join all_ using (view_name) full outer join usr_ using(view_name);
