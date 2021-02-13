## Description

Database schema for the Reveries project.

## Configuration

Create a `.env` file based on the `.env.template` file

## Building the Database Image

Liquibase is used to populate the schema. Run:

```
$ docker-compose build
```

### Running the Database

```
$ docker-compose up
```

you can then interact the DB by going to `localhost:5432`.