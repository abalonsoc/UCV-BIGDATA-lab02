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