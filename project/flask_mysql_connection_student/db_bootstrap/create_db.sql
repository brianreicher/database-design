CREATE DATABASE IF NOT EXISTS cool_db;

CREATE USER 'webapp'@'%' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON cool_db.* TO 'webapp'@'%';

FLUSH PRIVILEGES;

# move into database
USE cool_db;


# add DDL
CREATE TABLE IF NOT EXISTS test_table(
    name VARCHAR(20),
    color VARCHAR(10)
);


# add sample data
INSERT INTO test_table
    (name, color)

VALUES
    ('dev', 'blue'),
    ('pro', 'yellow'),
    ('junior', 'red');