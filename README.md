This repo is used for documenting how to build a complete web application system from scratch.

This system will have three components:
- Client Application (app)
- Server API (api)
- Database using PostgreSQL (pg_db)

All components are expected to be individually *dockerized*.

## RUNNING

1. Preparing the database:
- Prerequisite:
    - `milestone1b.csv` in `/data`
```sh
docker compose up -d
docker exec -it test_db psql business_db postgres -c "CREATE DATABASE my_db;"
docker exec -it test_db psql business_db postgres -c "CREATE TABLE IF NOT EXISTS business (name VARCHAR(80), state VARCHAR (2), city VARCHAR (50)); COPY business (name, state, city) FROM '/data/business.csv' DELIMITER ',' CSV;"
```

2. Preparing the server:
```sh
cd api
npm run dev
cd ..
```

3. Start the client:
```sh
cd app
npm run dev
```

## Expectations
---
### PostgreSQL Database

The (pg_db) is expected to contain a sample csv data for business in some US states and cities.

```sql
CREATE DATABASE appdb;
CREATE TABLE IF NOT EXISTS business (
    name VARCHAR(100),
    state CHAR(2),
    city VARCHAR(50)
);
```

### Server API

The (api) is expected to query and send queried data in JSON format to the client.

### Client App

The (app) is expected to be able to display in table format the response object containing queried data from the database.

### Dockerized Components

The components are expected to be contained in their own docker container. A `docker-compose.yml` is present at the root of this repo. This file will be run via:

```sh
docker compose up -d
```

The (app) and (api) components have their own respective GitHub repo, which are set in `docker-compose.yml`:

```yml
...
    services:
        app:
            - repository: <GitHub_url>
        api:
            - repository: <GitHub_url>
...
```

Each may also have their own `Dockerfile` as needed.
