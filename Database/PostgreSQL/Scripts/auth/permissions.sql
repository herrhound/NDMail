CREATE TABLE "Permissions"
(
  permissionid          UUID PRIMARY KEY NOT NULL,
  permissioncode        VARCHAR(50)      NOT NULL,
  permissiondescription VARCHAR(150),
  systemstatusid        INT
);
