insert into supplied_plsql_package_type (name)
select
  lower(object_name) name
from 
  dba_objects
where
  object_type in ('PACKAGE', 'TYPE') and
  ( 
    substr(object_name, 1, 5) = 'APEX_'   or
    substr(object_name, 1, 4) = 'CTX_'    or
    substr(object_name, 1, 5) = 'DBMS_'   or
           object_name        = 'HTF'     or
           object_name        = 'HTP'     or
    substr(object_name, 1, 4) = 'ORD_'    or
    substr(object_name, 1, 4) = 'OWA_'    or
    substr(object_name, 1, 4) = 'SDO_'    or
    substr(object_name, 1, 4) = 'SEM_'    or
    substr(object_name, 1, 4) = 'UTL_'    or
    substr(object_name, 1, 4) = 'WPG_'    or
    substr(object_name, 1, 7) = 'ANYDATA' or
    substr(object_name, 1, 3) = 'AQ$'     or
    substr(object_name, 1, 3) = 'RE$'
)
and owner = 'SYS' /* DBMS_REPCAT_AUTH belongs to SYSTEM and SYS ? */
;
