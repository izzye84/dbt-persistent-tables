{{ codegen.generate_source(database_name='raw',
                           schema_name='medicare_cclf_claims',
                           table_pattern='parta%',
                           generate_columns=true,
                           include_descriptions=true) }}