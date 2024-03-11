{{ config(materialized='view') }}

SELECT
  data
FROM
  RAW_TIPICO_TOP_EVENTS
