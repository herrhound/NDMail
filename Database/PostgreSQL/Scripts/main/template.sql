CREATE TABLE main.template
(
  templateId     SERIAL PRIMARY KEY NOT NULL,
  name           VARCHAR(150)    NOT NULL,
  description    TIMESTAMP       NOT NULL,
  applicationId  UUID            NOT NULL,
  systemstatusId INT             NOT NULL,
  transactionId  INT             NOT NULL
);
