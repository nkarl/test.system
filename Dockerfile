# syntax=docker/dockerfile:1
FROM postgres
COPY ./db/business.csv test_db:/data
RUN postgres -c "CREATE DATABASE my_db;"
RUn postgres -c "CREATE TABLE IF NOT EXISTS business (name VARCHAR(80), state VARCHAR (2), city VARCHAR (50)); COPY business (name, state, city) FROM '/data/business.csv' DELIMITER ',' CSV;"
WORKDIR test_db:/data
