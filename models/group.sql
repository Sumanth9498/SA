{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS event_id,
  parsed_data['group']['id'] AS group_id,
  parsed_data['group']['name'] AS group_name,
  parsed_data['group']['description'] AS group_description
FROM {{ ref('stg_raw_tipico_top_events') }}
