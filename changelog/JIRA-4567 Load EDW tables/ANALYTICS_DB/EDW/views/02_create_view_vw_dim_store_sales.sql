--liquibase formatted sql
--changeset nivethidhas:JIRA-4567_ANALYTICS_DB-EDW-VW_DIM_STORE_SALES_07-02-2025_15:11

USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;

CREATE OR REPLACE VIEW VW_DIM_STORE_SALES
AS
SELECT * FROM DIM_STORE_SALES;

--rollback DROP VIEW VW_DIM_STORE_SALES;
