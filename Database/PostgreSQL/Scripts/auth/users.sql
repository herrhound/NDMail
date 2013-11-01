CREATE TABLE auth.Users (
  userId         UUID         NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
  userName       VARCHAR(50)  NOT NULL,
  userPassword   VARCHAR(150) NOT NULL,
  email          VARCHAR(150) NULL,
  secretQuestion VARCHAR(150) NULL,
  secretAnswer   VARCHAR(150) NULL,
  systemStatusId INT
);

ALTER TABLE auth.Users
ADD CONSTRAINT auth_Users_systemStatusId FOREIGN KEY (systemStatusId)
REFERENCES dict.systemstatus (systemstatusid);
