# Tipico Assessment: Data Modeling with dbt

This repository contains my solution for the data modeling and transformation assessment using dbt (data build tool). The objective of this assessment was to demonstrate proficiency in data modeling, SQL transformations, and working with dbt.

## Overview

The assessment provided a Redshift database with a table called `RAW_TIPICO_TOP_EVENTS` containing JSON data related to betting events, participants, markets, and other details from the Tipico API. The task was to create a dbt project to model and transform this data, focusing on specific elements such as root elements, participants, group, markets, eventDetails, and eventTags.

## Data Source

The data source for this project is the `RAW_TIPICO_TOP_EVENTS` table, which is defined in the `sources.yml` file:

```yaml
sources:
  - name: tipico
    database: dev
    schema: sumanth_atluri
    tables:
      - name: RAW_TIPICO_TOP_EVENTS
