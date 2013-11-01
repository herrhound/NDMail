CREATE TABLE auth.Roles (
  roleId          UUID         NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
  roleName        VARCHAR(50)  NOT NULL,
  roleDescription VARCHAR(150) NULL,
  systemStatusId  INT
);

ALTER TABLE auth.Roles
ADD CONSTRAINT auth_Roles_SystemStatusId FOREIGN KEY (systemStatusId)
REFERENCES dict.systemstatus (systemstatusid);