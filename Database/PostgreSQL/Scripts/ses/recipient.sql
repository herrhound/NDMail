CREATE TABLE ses.recipient
(
  recipientId     SERIAL PRIMARY KEY NOT NULL,
  notificationId  INT                NOT NULL,
  recipientTypeId INT                NOT NULL,
  emailAddress    VARCHAR(1024)      NOT NULL,
  action          VARCHAR(1024)      NULL,
  status          VARCHAR(1024),
  diagnosticCode  VARCHAR(1024)
);

ALTER TABLE ses.recipient
ADD CONSTRAINT ses_recipient_notificationId FOREIGN KEY (notificationId)
REFERENCES ses.notification (notificationId) MATCH SIMPLE;

ALTER TABLE ses.recipient
ADD CONSTRAINT ses_recipient_recepientTypeId FOREIGN KEY (recipientTypeId)
REFERENCES dict.recipienttype (recipienttypeid) MATCH SIMPLE;