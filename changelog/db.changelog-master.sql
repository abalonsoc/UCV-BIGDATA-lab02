--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_7002586990
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';
--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_7002586990;
--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_7002586990
COMMENT 'Staging schema - BI and Big Data - Lab 03';

--rollback DROP SCHEMA IF EXISTS <CATALOGO>.bi_staging_<codigo_estudiante>;

databaseChangeLog:
  - include:
      file: changelog/changes/001_create_bi_schema.sql
  - include:
      file: changelog/changes/002_create_staging_schema.sql
  - include:
      file: changelog/changes/003_create_dim_date.sql
  - include:
      file: changelog/changes/004_create_dim_product.sql
  - include:
      file: changelog/changes/005_create_dim_customer.sql
  - include:
      file: changelog/changes/006_create_dim_store.sql
  - include:
      file: changelog/changes/007_create_fact_sales.sql