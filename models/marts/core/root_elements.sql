{{ config(materialized='table') }}

SELECT
  PARSE_JSON(data):id AS id,
  PARSE_JSON(data):startTime AS startTime,
  PARSE_JSON(data):messageTime AS messageTime,
  PARSE_JSON(data):sportType AS sportType,
  PARSE_JSON(data):matchState AS matchState,
  PARSE_JSON(data):status AS status,
  PARSE_JSON(data):marketCount AS marketCount,
  PARSE_JSON(data):eventType AS eventType,
  PARSE_JSON(data):updatesCount AS updatesCount,
  PARSE_JSON(data):displayInfo AS displayInfo,
  PARSE_JSON(data):lastModifiedTime AS lastModifiedTime
FROM
  {{ ref('raw_tipico_events') }}
