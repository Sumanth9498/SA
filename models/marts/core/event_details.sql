{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  PARSE_JSON(data):eventDetails AS eventDetailsData
FROM
  {{ ref('raw_tipico_events') }}
