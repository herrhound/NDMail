CREATE TABLE auth.UserInRoles (
  userId         UUID NOT NULL,
  roleId         UUID NOT NULL,
  systemStatusId INT,
  CONSTRAINT "UserInRoles_pkey" PRIMARY KEY (userId, roleid)
);

ALTER TABLE auth.UserInRoles
ADD CONSTRAINT auth_usersInRoles_UserId FOREIGN KEY (userId)
REFERENCES auth.users (userId);

ALTER TABLE auth.UserInRoles
ADD CONSTRAINT auth_usersInRoles_RoleId FOREIGN KEY (roleId)
REFERENCES auth.Roles (roleId);

ALTER TABLE auth.UserInRoles
ADD CONSTRAINT auth_usersInRoles_SystemStatusId FOREIGN KEY (systemStatusId)
REFERENCES dict.systemstatus (systemstatusid);