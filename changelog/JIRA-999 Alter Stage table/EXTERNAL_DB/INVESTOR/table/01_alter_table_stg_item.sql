--liquibase formatted sql
--changeset nivethidhas:JIRA-999_EXTERNAL_DB-INVESTOR-ALTER_STG_ITEM-07-02-2025_18:57

USE DATABASE EXTERNAL_DB;
USE SCHEMA Investor;

alter table STG_ITEM add column I_ITEM_DEFAULT_NUMBER number default 1;

--rollback alter table STG_ITEM drop column I_ITEM_DEFAULT_NUMBER;

