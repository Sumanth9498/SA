{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  tagData
FROM
  {{ ref('raw_tipico_events') }},
  LATERAL FLATTEN(input => PARSE_JSON(data), outer => true) tags
  CROSS JOIN UNNEST(tags.eventTags) AS t(tagData)
