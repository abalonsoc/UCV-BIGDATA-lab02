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

--include file:changelog/changes/001_create_bi_schema.sql
--include file:changelog/changes/002_create_staging_schema.sql
--include file:changelog/changes/003_create_dim_date.sql
--include file:changelog/changes/004_create_dim_product.sql
--include file:changelog/changes/005_create_dim_customer.sql
--include file:changelog/changes/006_create_dim_store.sql
--include file:changelog/changes/007_create_fact_sales.sql
--include file:changelog/changes/008_create_bronze_silver_schemas.sql
--include file:changelog/changes/009_create_bronze_raw_tables.sql