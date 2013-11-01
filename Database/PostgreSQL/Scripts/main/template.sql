CREATE TABLE main.template
(
  templateId     SERIAL PRIMARY KEY NOT NULL,
  name           VARCHAR(150)    NOT NULL,
  description    TIMESTAMP       NOT NULL,
  applicationId  UUID            NOT NULL,
  systemstatusId INT             NOT NULL,
  transactionId  INT             NOT NULL
);


ALTER TABLE main.template
ADD CONSTRAINT Fk_main_Template_ApplicationId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.template
ADD CONSTRAINT Fk_main_Template_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.template
ADD CONSTRAINT Fk_main_Template_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;
