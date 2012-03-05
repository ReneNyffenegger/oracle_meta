alter session set nls_language = english;
declare
  description_raw varchar2(4000);
begin

  for i in 0 .. 99999 loop

      description_raw := sqlerrm(-i);

      continue when description_raw like '%non-ORACLE exception';
      continue when description_raw like '%Message%not found;  product=RDBMS; facility=ORA';
      continue when description_raw like '%non-ORACLE exception ';

      description_raw := replace(description_raw, chr(10), null);

      insert into error_message(name, description) values (  lower(substr(description_raw, 1, 9)), 
                                                                   substr(description_raw,12   ));

  end loop;

end;
/
