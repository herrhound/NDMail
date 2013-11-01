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

ALTER TABLE main.log
ADD CONSTRAINT Fk_main_Log_ApplicatioId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.log
ADD CONSTRAINT Fk_main_Log_StatusId FOREIGN KEY (statusid)
REFERENCES dict.logstatus (logstatusid) MATCH SIMPLE;

ALTER TABLE main.log
ADD CONSTRAINT Fk_main_Log_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.log
ADD CONSTRAINT Fk_main_Log_TaskDestinationRelationId FOREIGN KEY (taskdestinationrelationid)
REFERENCES main.taskdestinationrelation (taskdestinationrelationid) MATCH SIMPLE;

ALTER TABLE main.log
ADD CONSTRAINT Fk_main_Log_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;
