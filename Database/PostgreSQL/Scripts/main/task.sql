CREATE TABLE main.Task
(
  taskid         SERIAL PRIMARY KEY NOT NULL,
  templateid     INT             NOT NULL,
  scheduleid     INT             NOT NULL,
  applicationid  UUID            NOT NULL,
  systemstatusid INT             NOT NULL,
  transactionid  INT             NOT NULL
);


ALTER TABLE main.task
ADD CONSTRAINT Fk_main_Task_ApplicationId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.task
ADD CONSTRAINT Fk_main_Task_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.task
ADD CONSTRAINT Fk_main_Task_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;

ALTER TABLE main.task
ADD CONSTRAINT Fk_main_Task_TemplateId FOREIGN KEY (templateid)
REFERENCES main.template (templateid) MATCH SIMPLE;

ALTER TABLE main.task
ADD CONSTRAINT Fk_main_Task_ScheduleId FOREIGN KEY (scheduleid)
REFERENCES main.schedule (scheduleid) MATCH SIMPLE;
