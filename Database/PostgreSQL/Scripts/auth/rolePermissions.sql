CREATE TABLE auth.RolePermissions
(
  roleId          UUID NOT NULL,
  permissionId    UUID NOT NULL,
  permissionstate INT  NOT NULL,
  systemstatusId  INT,
  PRIMARY KEY (roleid, permissionid)
);

ALTER TABLE auth.RolePermissions
ADD CONSTRAINT auth_rolePermissions_roleId FOREIGN KEY (roleId)
REFERENCES auth.roles (roleId);

ALTER TABLE auth.rolepermissions
ADD CONSTRAINT auth_rolePermissions_permissionId FOREIGN KEY (permissionId)
REFERENCES auth.Permissions (permissionId);

ALTER TABLE auth.rolepermissions
ADD CONSTRAINT auth_rolePermissions_systemStatusId FOREIGN KEY (systemstatusId)
REFERENCES dict.systemstatus (systemstatusid);
