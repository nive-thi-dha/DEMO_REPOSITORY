--liquibase formatted sql

--changeset nivethidhas:22
CREATE TABLE new_table (
    id INT,
    name STRING,
    created_at TIMESTAMP 
);

--rollback DROP TABLE new_table;

--changeset nivethidhas:21
 
INSERT INTO new_table (id, name, created_at) VALUES (1, 'John Doe', current_timestamp());
INSERT INTO new_table (id, name, created_at) VALUES (2, 'Jane Smith', current_timestamp());

--rollback DELETE FROM new_table;
