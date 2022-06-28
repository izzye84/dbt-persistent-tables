{% macro generate_schema_name(custom_schema_name, node) %}

    {# if this model is created in prod or staging, use the schema designated in dbt_project.yml #}
    {% if  target.name == 'prod' and custom_schema_name %}
        {{ custom_schema_name | trim | upper }}

    {% elif target.name == 'dev' and custom_schema_name %}
        {{ custom_schema_name | trim | upper }}

    {# else, if this is created in dev, use the default (user) schema #}
    {% else %}
        {{ target.schema | trim | upper }}

    {% endif %}

{% endmacro %}