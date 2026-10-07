--liquibase formatted sql

--changeset estudiante:009
CREATE TABLE IF NOT EXISTS workspace.bronze.sales_raw (
    sale_id STRING,
    sale_date STRING,
    product_id STRING,
    quantity STRING,
    unit_price STRING
)
USING DELTA;

CREATE TABLE IF NOT EXISTS workspace.bronze.products_raw (
    product_id STRING,
    product_name STRING,
    category STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.products_raw;
--rollback DROP TABLE IF EXISTS workspace.bronze.sales_raw;
