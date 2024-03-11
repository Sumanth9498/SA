{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS event_id,
  market['id'] AS market_id,
  market['name'] AS market_name,
  market['type'] AS market_type,
  market['status'] AS market_status
FROM {{ ref('stg_raw_tipico_top_events') }},
UNNEST(parsed_data['markets']) AS market
