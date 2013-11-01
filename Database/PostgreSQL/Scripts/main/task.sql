CREATE TABLE main.Task
(
  taskid         SERIAL PRIMARY KEY NOT NULL,
  templateid     INT             NOT NULL,
  scheduleid     INT             NOT NULL,
  applicationid  UUID            NOT NULL,
  systemstatusid INT             NOT NULL,
  transactionid  INT             NOT NULL
);
