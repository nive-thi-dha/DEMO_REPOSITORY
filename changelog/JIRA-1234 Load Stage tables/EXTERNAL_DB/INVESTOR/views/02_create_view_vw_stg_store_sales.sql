--liquibase formatted sql
--changeset nivethidhas:JIRA-1234_EXTERNAL_DB-INVESTOR-VW_STG_STORE_SALES_07-02-2025_15:05

USE DATABASE EXTERNAL_DB;
USE SCHEMA Investor;

CREATE OR REPLACE VIEW VW_STG_STORE_SALES
AS
SELECT * FROM STG_STORE_SALES;

--rollback DROP VIEW VW_STG_STORE_SALES;
