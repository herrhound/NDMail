CREATE TABLE main.schedule
(
  scheduleid     SERIAL PRIMARY KEY    NOT NULL,
  name           VARCHAR(150)       NOT NULL,
  executiontyme  TIMESTAMP          NOT NULL,
  runnow         BOOL DEFAULT FALSE NOT NULL,
  applicationid  UUID               NOT NULL,
  systemstatusid INT                NOT NULL,
  transactionid  INT                NOT NULL
);
