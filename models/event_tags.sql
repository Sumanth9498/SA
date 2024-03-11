{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS event_id,
  tag['id'] AS tag_id,
  tag['name'] AS tag_name,
  tag['category'] AS tag_category
FROM {{ ref('stg_raw_tipico_top_events') }},
UNNEST(parsed_data['eventTags']) AS tag
