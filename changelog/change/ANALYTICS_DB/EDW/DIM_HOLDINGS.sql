--liquibase formatted sql

--changeset nivethidhas:20
USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;
CREATE OR REPLACE TABLE DIM_HOLDINGS (     SYSTEM_ID NUMBER(10) PRIMARY KEY,     SYSTEM_NAME VARCHAR(50) NOT NULL,     SYSTEM_TYPE VARCHAR(30),     COUNTRY VARCHAR(50), CREATED_DATE DATE, STATUS VARCHAR(10), 
EFFECTIVE_DATE TIMESTAMP,
END_DATE TIMESTAMP);

--rollback DROP TABLE DIM_HOLDINGS;

--changeset nivethidhas:21
USE SCHEMA EDW;
INSERT INTO DIM_HOLDINGS (SYSTEM_ID, SYSTEM_NAME, SYSTEM_TYPE, COUNTRY, CREATED_DATE, STATUS, EFFECTIVE_DATE, END_DATE) VALUES(1, 'Bloomberg', 'Market Data', 'USA', '2023-01-10', 'Active',CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP());


--rollback DELETE FROM TABLE DIM_HOLDINGS;
