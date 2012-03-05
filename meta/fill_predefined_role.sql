insert into predefined_role (name)
select lower(name)
  from predefined_users_and_roles 
 where user_or_role = 'ROLE';
