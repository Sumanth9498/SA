{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  PARSE_JSON(data):group AS groupData
FROM
  {{ ref('raw_tipico_events') }}
