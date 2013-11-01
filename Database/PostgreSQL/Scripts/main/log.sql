DROP TABLE main.log;

CREATE TABLE main.log
(
  logid                     SERIAL PRIMARY KEY NOT NULL,
  taskdestinationrelationid INT             NOT NULL,
  messageid                 VARCHAR(256),
  statusid                  INT             NOT NULL,
  timestamp                 TIMESTAMP       NOT NULL,
  applicationid             UUID            NOT NULL,
  systemstatusid            INT             NOT NULL,
  transactionid             INT             NOT NULL
);
