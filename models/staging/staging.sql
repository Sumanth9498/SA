{{ config(materialized='view') }}

SELECT
  JSON_PARSE(data) AS parsed_data
FROM {{ source('tipico', 'RAW_TIPICO_TOP_EVENTS') }}
