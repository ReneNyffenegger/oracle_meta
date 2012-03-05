create view predefined_users_and_roles as 
select
-- This view is used to fill the tables
--   o  predefined_user_account and
--   o  predefined_role
--
-- The assumption is that these accounts and roles
-- were created within an hour after the creation
-- of the VERY FIRST user or role in the database.
--
-- TODO: This assumption is of course on shaky grounds...
--       maybe, it should be changed to a condition like
--           WHERE 
--               user# < 32
--       or something similar.
--
  name,
  case when type# = 1 then 'USER' else 'ROLE' end user_or_role
from
  sys.user$
where
  name != '_NEXT_USER' and
  ctime <= (select min(ctime) + 1/24 from sys.user$);


@table_predefined_user_account
@fill_predefined_user_account

@table_predefined_role
@fill_predefined_role

insert into topic (name, table_name) values ('Predefined user accounts', 'predefined_user_accounts');
insert into topic (name, table_name) values ('Predefined roles'        , 'predefined_role'         );
