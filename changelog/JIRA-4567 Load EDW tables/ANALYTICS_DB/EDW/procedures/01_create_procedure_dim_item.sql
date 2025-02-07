--liquibase formatted sql
--changeset nivethidhas:1

USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;

CREATE OR REPLACE PROCEDURE DIM_ITEM()
RETURNS TABLE (I_ITEM_SK NUMBER(38,0), I_ITEM_ID VARCHAR(16))
LANGUAGE JAVASCRIPT
AS
$$
var result = [];
var sql_command = "SELECT I_ITEM_SK, I_ITEM_ID FROM VW_DIM_ITEM";
var statement1 = snowflake.createStatement({sqlText: sql_command});
var result_set = statement1.execute();
while (result_set.next()) {
    result.push({I_ITEM_SK: result_set.getColumnValue('I_ITEM_SK'), I_ITEM_ID: result_set.getColumnValue('I_ITEM_ID')});
}
return result;
$$;


--rollback DROP PROCEDURE DIM_ITEM;

