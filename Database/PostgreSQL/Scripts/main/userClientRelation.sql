CREATE TABLE main.userClientRelation (
  userClientRelationId SERIAL NOT NULL,
  userId               UUID   NOT NULL,
  clientId             INT    NOT NULL,
  applicationId        UUID   NOT NULL,
  systemStatusId       INT    NOT NULL,
  transactionId        INT    NOT NULL
);

ALTER TABLE main.userClientRelation
ADD CONSTRAINT main_userClientRelation_userId FOREIGN KEY (userId)
REFERENCES auth.users (userId);

ALTER TABLE main.userClientRelation
ADD CONSTRAINT main_userClientRelation_clientId FOREIGN KEY (clientId)
REFERENCES main.client (clientid) ;

ALTER TABLE main.userClientRelation
ADD CONSTRAINT main_userClientRelation_systemStatusId FOREIGN KEY (systemStatusId)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.userClientRelation
ADD CONSTRAINT main_userClientRelation_transactionId FOREIGN KEY (transactionId)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;