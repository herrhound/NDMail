CREATE TABLE ses.bounce
(
  bounceId       SERIAL PRIMARY KEY NOT NULL,
  notificationId INT                NOT NULL REFERENCES ses.notification (notificationId),
  bounceType     VARCHAR(1024)      NOT NULL,
  bounceSubType  VARCHAR(1024)      NOT NULL,
  timestamp      TIMESTAMP          NOT NULL,
  feedbackId     VARCHAR(1024)      NOT NULL,
  reportingMTA   VARCHAR(1024)      NULL
);
