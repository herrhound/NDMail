CREATE TABLE ses.complaint
(
  complaintId           SERIAL PRIMARY KEY NOT NULL,
  notificationId        INT                NOT NULL REFERENCES ses.notification (notificationId),
  timestamp             TIMESTAMP          NOT NULL,
  feedbackId            VARCHAR(1024)      NOT NULL,
  userAgent             VARCHAR(1024)      NULL,
  complaintFeedbackType VARCHAR(1024)      NULL,
  arrivalDate           TIMESTAMP          NULL
);
