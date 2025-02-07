--liquibase formatted sql
--changeset nivethidhas:3

USE DATABASE ANALYTICS_DB;
USE SCHEMA EDW;

CREATE OR REPLACE TABLE DIM_STORE_SALES
(
SS_SOLD_DATE_SK NUMBER(38,0),
SS_SOLD_TIME_SK NUMBER(38,0),
SS_ITEM_SK NUMBER(38,0),
SS_CUSTOMER_SK NUMBER(38,0),
SS_CDEMO_SK NUMBER(38,0),
SS_HDEMO_SK NUMBER(38,0),
SS_ADDR_SK NUMBER(38,0),
SS_STORE_SK NUMBER(38,0),
SS_PROMO_SK NUMBER(38,0),
SS_TICKET_NUMBER NUMBER(38,0),
SS_QUANTITY NUMBER(38,0),
SS_WHOLESALE_COST NUMBER(7,2),
SS_LIST_PRICE NUMBER(7,2),
SS_SALES_PRICE NUMBER(7,2),
SS_EXT_DISCOUNT_AMT NUMBER(7,2),
SS_EXT_SALES_PRICE NUMBER(7,2),
SS_EXT_WHOLESALE_COST NUMBER(7,2),
SS_EXT_LIST_PRICE NUMBER(7,2),
SS_EXT_TAX NUMBER(7,2),
SS_COUPON_AMT NUMBER(7,2),
SS_NET_PAID NUMBER(7,2),
SS_NET_PAID_INC_TAX NUMBER(7,2),
SS_NET_PROFIT NUMBER(7,2)
);

--rollback DROP TABLE DIM_STORE_SALES;

--changeset nivethidhas:4
INSERT INTO DIM_STORE_SALES (SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.STORE_SALES LIMIT 100);

--rollback DELETE FROM DIM_STORE_SALES;

