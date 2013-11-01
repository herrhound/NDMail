CREATE TABLE main.destination (
  destinationId  SERIAL        NOT NULL PRIMARY KEY,
  email          VARCHAR(1024) NOT NULL,
  clientId       INT           NOT NULL,
  sourceId       INT           NOT NULL,
  applicationId  UUID          NOT NULL,
  systemStatusId INT           NOT NULL,
  transactionId  INT           NOT NULL
);

ALTER TABLE main.destination
ADD CONSTRAINT main_destination_sourceId FOREIGN KEY (sourceId)
REFERENCES main.source (sourceId);

ALTER TABLE main.destination
ADD CONSTRAINT main_destination_systemStatusId FOREIGN KEY (systemStatusId)
REFERENCES dict.systemstatus (systemstatusid);

ALTER TABLE main.destination
ADD CONSTRAINT main_destination_transactionId FOREIGN KEY (transactionId)
REFERENCES main.transaction (transactionid);