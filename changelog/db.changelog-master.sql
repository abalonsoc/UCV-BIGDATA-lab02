--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_7002586990
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';
--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_7002586990;
--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_7002586990
COMMENT 'Staging schema - BI and Big Data - Lab 03';

--rollback DROP SCHEMA IF EXISTS <CATALOGO>.bi_staging_<codigo_estudiante>;
