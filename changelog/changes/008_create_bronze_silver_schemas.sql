--liquibase formatted sql

--changeset estudiante:008
CREATE SCHEMA IF NOT EXISTS workspace.bronze
COMMENT 'Bronze - raw data layer';

CREATE SCHEMA IF NOT EXISTS workspace.silver
COMMENT 'Silver - cleaned and standardized data layer';

--rollback DROP SCHEMA IF EXISTS workspace.silver;
--rollback DROP SCHEMA IF EXISTS workspace.bronze;
