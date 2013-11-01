DROP TABLE auth.application;

CREATE TABLE auth.application
(
  applicationId UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
  applicationName VARCHAR(256) NOT NULL,
  loweredApplicationName VARCHAR(256) NOT NULL,
  description VARCHAR(256) NULL
)