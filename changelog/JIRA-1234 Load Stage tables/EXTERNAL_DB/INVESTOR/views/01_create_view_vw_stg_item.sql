--liquibase formatted sql
--changeset nivethidhas:1

USE DATABASE EXTERNAL_DB;
USE SCHEMA Investor;

CREATE OR REPLACE VIEW VW_STG_ITEM
AS
SELECT * FROM STG_ITEM;

--rollback DROP VIEW VW_STG_ITEM;

