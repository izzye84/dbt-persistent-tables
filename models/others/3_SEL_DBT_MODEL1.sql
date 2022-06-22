CREATE or replace PROCEDURE {{ var('env') }}_DB.DEMO.SEL_DBT_MODEL1 ()
  RETURNS VARCHAR
  LANGUAGE javascript
  AS
  $$
  var rs = snowflake.execute( { sqlText: 
      'SELECT * FROM "{{ var('env') }}"_DB.DEMO.DBT_MODEL1;'
       } );
  return 'Done.';
  $$;