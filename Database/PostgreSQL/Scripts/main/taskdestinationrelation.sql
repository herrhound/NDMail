DROP TABLE main.taskdestinationrelation;

CREATE TABLE main.taskDestinationRelation
(
  taskDestinationRelationId SERIAL PRIMARY KEY  NOT NULL,
  taskid                    INT                 NOT NULL,
  destinationid             INT                 NOT NULL,
  languageid                INT                 NOT NULL,
  systemstatusid            INT                 NOT NULL,
  transactionid             INT                 NOT NULL,
  applicationid             UUID                NOT NULL
);

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_ApplicatioId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_DestinationId FOREIGN KEY (destinationid)
REFERENCES main.destination (destinationid) MATCH SIMPLE;

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_LanguageId FOREIGN KEY (languageid)
REFERENCES dict.language (languageid) MATCH SIMPLE;

ALTER TABLE main.taskDestinationRelation
ADD CONSTRAINT Fk_main_TaskDestinationRelation_TaskId FOREIGN KEY (taskid)
REFERENCES main.task (taskid) MATCH SIMPLE;

