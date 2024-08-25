#!/bin/sh

# Configurações de conexão
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="test"
DB_USER="postgres"
DB_PASSWORD="pass"

# Dados para inserir na tabela
VALUES="('John Doe', 25), ('Jane Smith', 30), ('Bob Johnson', 35)"

# Executa o comando no console do PostgreSQL com a senha fornecida
PGPASSWORD="$DB_PASSWORD" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -c "CREATE DATABASE test;" -c "\c test;" -c "CREATE TABLE IF NOT EXISTS teiboul (id SERIAL PRIMARY KEY, name VARCHAR(50), age INT); INSERT INTO teiboul (name, age) VALUES $VALUES;"

# Verifica se os dados foram inseridos corretamente
PGPASSWORD="$DB_PASSWORD" psql -h $DB_HOST -p $DB_PORT -d $DB_NAME -U $DB_USER -w -c "SELECT * FROM teiboul;"
