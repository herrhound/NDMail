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

ALTER TABLE main.schedule
ADD CONSTRAINT Fk_main_Schedule_ApplicationId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.schedule
ADD CONSTRAINT Fk_main_Schedule_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.schedule
ADD CONSTRAINT Fk_main_Schedule_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;
