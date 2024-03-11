{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  marketData
FROM
  {{ ref('raw_tipico_events') }},
  LATERAL FLATTEN(input => PARSE_JSON(data), outer => true) markets
  CROSS JOIN UNNEST(markets.markets) AS t(marketData)
