{{ config(materialized='table') }}

SELECT
  parsed_data['id'] AS event_id,
  parsed_data['eventDetails']['category'] AS event_category,
  parsed_data['eventDetails']['type'] AS event_type,
  parsed_data['eventDetails']['courtType'] AS court_type,
  parsed_data['eventDetails']['tournamentRound'] AS tournament_round
FROM {{ ref('stg_raw_tipico_top_events') }}
