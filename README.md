# My attempt to learn SQL

Probably going to use local sqlite DBs as much as possible to do this, even though it's not as robust as Postgres or mySQL.

## SQLite notes

### Create db

Can use the CLI or from a file:

```
sqlite3 <db file> < sql-file-name.sql
```

### Get nicely formatted output

in sqlite CLI, run:

```
.mode column
```
