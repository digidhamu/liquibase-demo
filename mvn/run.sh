#!/bin/bash

# mvn clean liquibase:update

mvn -DLOG_LEVEL=INFO -DDB_CONTEXT=local -DDB_USERNAME=MOVIE -DDB_PASSWORD=MOVIE -DDB_SCHEMA=MOVIE -DDB_URL=jdbc:oracle:thin:@localhost:1521:xe liquibase:update