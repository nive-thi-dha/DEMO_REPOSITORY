--liquibase formatted sql
--changeset nivethidhas:1

USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;

CREATE OR REPLACE VIEW VW_DIM_ITEM
AS
SELECT * FROM DIM_ITEM;

--rollback DROP VIEW VW_DIM_ITEM;

