insert into predefined_user_account (name)
select lower(name)
  from predefined_users_and_roles 
 where user_or_role = 'USER';
