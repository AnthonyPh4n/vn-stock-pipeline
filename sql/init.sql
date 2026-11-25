CREATE SCHEMA IF NOT EXISTS raw;

CREATE TABLE IF NOT EXISTS raw.stock_price_daily (
    symbol       TEXT        NOT NULL,
    trade_date   DATE        NOT NULL,
    open         NUMERIC(18,2),
    high         NUMERIC(18,2),
    low          NUMERIC(18,2),
    close        NUMERIC(18,2),
    volume       BIGINT,
    source       TEXT        NOT NULL,
    ingested_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (symbol, trade_date)
);