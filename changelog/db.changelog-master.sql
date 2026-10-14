--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_7002586990
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';
--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_7002586990;

--changeset estudiante:002
--validCheckSum: ANY
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_7002586990
COMMENT 'Staging schema - BI and Big Data - Lab 03';
--rollback DROP SCHEMA IF EXISTS workspace.bi_staging_7002586990;

--changeset estudiante:008
CREATE SCHEMA IF NOT EXISTS workspace.bronze;
CREATE SCHEMA IF NOT EXISTS workspace.silver;

--changeset estudiante:009
CREATE TABLE IF NOT EXISTS workspace.bronze.sales_raw (
    id STRING,
    product_id STRING,
    quantity INT,
    amount DECIMAL(10,2),
    sale_date TIMESTAMP
);
CREATE TABLE IF NOT EXISTS workspace.bronze.products_raw (
    product_id STRING,
    product_name STRING,
    category STRING,
    price DECIMAL(10,2)
);

--liquibase formatted sql

--changeset estudiante:010
CREATE TABLE IF NOT EXISTS workspace.bronze.customers_raw (
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    city STRING,
    country STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.customers_raw;


--liquibase formatted sql

--changeset estudiante:011
CREATE TABLE IF NOT EXISTS workspace.bronze.stores_raw (
    store_id STRING,
    store_name STRING,
    city STRING,
    region STRING,
    country STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.stores_raw;
- include:
      file: changelog/changes/010_create_customers_raw.sql
  - include:
      file: changelog/changes/011_create_stores_raw.sql
