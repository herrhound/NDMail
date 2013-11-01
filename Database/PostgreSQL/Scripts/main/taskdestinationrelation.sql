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
