#!/bin/bash

# dumps universe database to universe.sql
pg_dump -cC --inserts -U freecodecamp universe > universe.sql
