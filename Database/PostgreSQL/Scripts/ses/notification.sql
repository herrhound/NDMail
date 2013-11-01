CREATE TABLE ses.Notification
(
  notificationId        SERIAL PRIMARY KEY NOT NULL,
  logId                 INT                NOT NULL,
  notificationType      INT                NOT NULL,
  originalMailTimeStamp TIMESTAMP          NOT NULL,
  messageId             VARCHAR(1024)      NOT NULL,
  source                VARCHAR(1024)      NOT NULL,
  timestamp             TIMESTAMP          NOT NULL
);
