--liquibase formatted sql

--changeset nivethidhas:11
USE SCHEMA Offerings;
CREATE OR REPLACE TABLE IBOR_SOURCE_SYSTEM (     
  SYSTEM_ID NUMBER(10) PRIMARY KEY,     
  SYSTEM_NAME VARCHAR(50) NOT NULL,     
  SYSTEM_TYPE VARCHAR(30),     
  COUNTRY VARCHAR(50), 
  CREATED_DATE DATE, 
  STATUS VARCHAR(10) 
  );

--rollback DROP TABLE IBOR_SOURCE_SYSTEM;

--changeset nivethidhas:12
INSERT INTO IBOR_SOURCE_SYSTEM (SYSTEM_ID, SYSTEM_NAME, SYSTEM_TYPE, COUNTRY, CREATED_DATE, STATUS) VALUES
  (1, 'Bloomberg', 'Market Data', 'USA', '2023-01-10', 'Active'), 
  (2, 'Reuters', 'News & Data', 'UK', '2023-02-15', 'Active'), 
  (3, 'ICE', 'Exchange', 'USA', '2023-03-05', 'Inactive'), 
  (4, 'LSEG', 'Market Data', 'UK', '2023-04-20', 'Active'), 
  (5, 'EUREX', 'Exchange', 'Germany', '2023-05-12', 'Active'), 
  (6, 'NASDAQ', 'Exchange', 'USA', '2023-06-18', 'Inactive'), 
  (7, 'CME', 'Derivatives', 'USA', '2023-07-22', 'Active'), 
  (8, 'SGX', 'Exchange', 'Singapore', '2023-08-30', 'Active'), 
  (9, 'JPX', 'Exchange', 'Japan', '2023-09-15', 'Inactive'), 
  (10, 'BSE', 'Stock Exchange', 'India', '2023-10-01', 'Active');

--rollback DELETE FROM IBOR_SOURCE_SYSTEM;

