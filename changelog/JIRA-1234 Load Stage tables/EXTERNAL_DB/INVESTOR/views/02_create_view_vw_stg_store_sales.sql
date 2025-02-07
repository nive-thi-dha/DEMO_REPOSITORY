--liquibase formatted sql
--changeset nivethidhas:2

USE DATABASE EXTERNAL_DB;
USE SCHEMA Investor;

CREATE OR REPLACE VIEW VW_STG_STORE_SALES
AS
SELECT * FROM STG_STORE_SALES;

--rollback DROP VIEW VW_STG_STORE_SALES;