--liquibase formatted sql
--changeset nivethidhas:JIRA-1402_EXTERNAL_DB-INVESTOR-REGION-14-02-2025_15:13
USE DATABASE EXTERNAL_DB;
USE SCHEMA Investor;

CREATE TABLE REGION (
R_REGIONKEY NUMBER(38,0),
R_NAME VARCHAR(25),
R_COMMENT VARCHAR(152)
);


--rollback DROP TABLE REGION;

--changeset nivethidhas:JIRA-1402_EXTERNAL_DB-INVESTOR-REGION-14-02-2025_15:14

INSERT INTO REGION (SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF100.REGION LIMIT 5);

--rollback DELETE FROM REGION;