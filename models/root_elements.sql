{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS id,
  parsed_data['startTime'] AS start_time,
  parsed_data['sportType'] AS sport_type,
  parsed_data['matchState'] AS match_state,
  parsed_data['status'] AS status,
  parsed_data['eventType'] AS event_type
FROM {{ ref('stg_raw_tipico_top_events') }}
