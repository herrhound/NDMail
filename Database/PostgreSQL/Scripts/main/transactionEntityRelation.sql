CREATE TABLE main.transactionEntityRelation (
  transactionEntityRelationId INT NOT NULL,
  transactionId               INT NOT NULL,
  entityId                    INT NOT NULL
);

ALTER TABLE main.transactionEntityRelation
ADD CONSTRAINT main_transcationEntityRelation_transactionId FOREIGN KEY (transactionId)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;

ALTER TABLE main.transactionEntityRelation
ADD CONSTRAINT main_transactionEntityRelation_entityId FOREIGN KEY (entityId)
REFERENCES dict.entity (entityid) MATCH SIMPLE;
