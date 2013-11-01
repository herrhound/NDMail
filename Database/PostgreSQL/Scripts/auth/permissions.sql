CREATE TABLE auth.permissions
(
  permissionId          UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
  permissioncode        VARCHAR(50)      NOT NULL,
  permissiondescription VARCHAR(150),
  systemstatusId        INT
);

ALTER TABLE auth.permissions
ADD CONSTRAINT auth_permissions_systemStatusId FOREIGN KEY (systemstatusId)
REFERENCES dict.systemstatus (systemstatusid);