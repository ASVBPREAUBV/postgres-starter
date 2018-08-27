# Postgrest Simple Example

## Prerequisites

docker, docker-compose installed

## Run

1. clone repo
    ```
    git clone https://github.com/ASVBPREAUBV/postgrest-starter
    ```
    
2. cd in repo folder
3. run docker-compose with docker-compose.yml
    ```
    docker-compose up
    ```
    
4. Services should run
    
    1. http://localhost:8080 should run swagger-gui
    2. http://localhost:3000 should run api
    3. http://localhost:5432 should run postgres
    
    
## Run sql script in docker-container
You can connect to postgres to work in the psql console

```
docker exec -it postgrest-starter_db_1  psql -U root -W app_db
```

## Development

While testing i found it to be more reliable to delete all containers every time i run docker-compose again.
WARNING: this will delete all containers with the names in the array in line 2 in scripts/reset-containers.sh

```
bash scripts/reset-containers.sh
```

## Todo

 - [x] Add Init-SQL Script
 - [ ] Add Admin with Password set in ENV
 - [ ] Add User-Model