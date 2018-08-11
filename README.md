# Postgrest Simple Example

## Prerequisites

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
4. Services should run

    `
    http://localhost:8080/ should run swagger-gui
    http://localhost:3000/ should run api
    http://localhost:5432/ should run postgres
    `
    
    
## Run sql script in docker-container
You can connect to postgres to work in the psql console

```
docker exec -it postgrest-starter_db_1  psql -U root -W app_db
```
