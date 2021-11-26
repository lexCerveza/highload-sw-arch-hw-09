#! /bin/bash

sudo apt-get update && sudo apt-get install mysql-client postgresql-client -y 
docker-compose up -d

echo "MySQL and PostgreSQL are up and running"

sleep 15

mysql -h localhost -P 3306 --protocol=tcp -u root -p test --password=pass < ./seed-data-percona.sql
psql -h localhost -p 5432 -U root -W test -f ./seed-data-postgres.sql

echo "Data seeded"