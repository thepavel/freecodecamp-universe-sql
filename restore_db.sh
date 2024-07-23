#!/bin/bash

# restores universe db from universe.sql
# assumes universe.sql to be valid
psql -U postgres < universe.sql
