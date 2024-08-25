#!/bin/bash

DB_PASSWORD="pass"

# Password provided right before psql command call
PGPASSWORD="$DB_PASSWORD" psql --host=localhost -d test -p 5432 -U postgres
