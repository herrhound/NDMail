CREATE TABLE main.source (
  sourceId       SERIAL        NOT NULL PRIMARY KEY,
  name           VARCHAR(256)  NOT NULL,
  description    VARCHAR(1024) NULL,
  applicationId  UUID          NOT NULL,
  systemStatusID INT           NOT NULL,
  transactionId  INT           NOT NULL
);

ALTER TABLE main.source
ADD CONSTRAINT main_source_systemStatusId FOREIGN KEY (systemStatusID)
REFERENCES dict.systemstatus (systemstatusid);

ALTER TABLE main.source
ADD CONSTRAINT main_source_transactionId FOREIGN KEY (transactionId)
REFERENCES main.transaction (transactionid);