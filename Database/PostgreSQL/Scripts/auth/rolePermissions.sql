CREATE TABLE auth.RolePermissions
(
  roleid          UUID NOT NULL,
  permissionid    UUID NOT NULL,
  permissionstate INT  NOT NULL,
  systemstatusid  INT,
  PRIMARY KEY (roleid, permissionid)
);
