--liquibase formatted sql
--changeset nivethidhas:JIRA-4567_ANALYTICS_DB-EDW-PROC_DIM_STORE_SALES_07-02-2025_15:12

USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;

CREATE OR REPLACE PROCEDURE DIM_STORE_SALES()
RETURNS TABLE (SS_ITEM_SK NUMBER(38,0), SS_CUSTOMER_SK NUMBER(38,0))
LANGUAGE JAVASCRIPT
AS
$$
var result = [];
var sql_command = "SELECT SS_ITEM_SK, SS_CUSTOMER_SK FROM VW_DIM_STORE_SALES";
var statement1 = snowflake.createStatement({sqlText: sql_command});
var result_set = statement1.execute();

while (result_set.next()) {
    result.push({
        SS_ITEM_SK: result_set.getColumnValue('SS_ITEM_SK'),
        SS_CUSTOMER_SK: result_set.getColumnValue('SS_CUSTOMER_SK')
    });
}

return result;
$$;


--rollback DROP PROCEDURE DIM_STORE_SALES;
