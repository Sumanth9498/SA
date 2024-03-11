{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS event_id,
  participant['name'] AS participant_name,
  participant['position'] AS participant_position,
  participant['abbreviation'] AS participant_abbreviation
FROM {{ ref('stg_raw_tipico_top_events') }},
UNNEST(parsed_data['participants']) AS participant
