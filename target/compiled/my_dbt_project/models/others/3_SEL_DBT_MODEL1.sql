CREATE or replace PROCEDURE TEST_DB.DEMO.SEL_DBT_MODEL1 ()
  RETURNS VARCHAR
  LANGUAGE javascript
  AS
  $$
  var rs = snowflake.execute( { sqlText: 
      'SELECT * FROM "TEST"_DB.DEMO.DBT_MODEL1;'
       } );
  return 'Done.';
  $$;