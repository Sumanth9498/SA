{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  participantData
FROM
  {{ ref('raw_tipico_events') }},
  LATERAL FLATTEN(input => PARSE_JSON(data), outer => true) participants
  CROSS JOIN UNNEST(participants.participants) AS t(participantData)
