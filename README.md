# Postgrest Starter Kit

## Prerequesies

docker, docker-compose installed

## Run

1. clone repo

    `
    git clone https://github.com/ASVBPREAUBV/postgrest-starter
    `
    
2. cd in local repo
3. run docker-compose with docker-compose.yml
    
    `
    docker-compose up
    `
4. Run init skript init_db.sql in db
    
    `
    docker exec -it postgreststarter_db_1  psql -U app_user -W app_db -a -f /myscript/init_db.sql
    `
5. Services should run

    `
    http://localhost:8080/ should run swagger-gui with todo endpoint
    http://localhost:3000/ should run api
    localhost:5432 should run postgres
    `
    
    