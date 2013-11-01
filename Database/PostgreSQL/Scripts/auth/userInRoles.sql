CREATE TABLE auth."UserInRoles" (
  userId         UUID NOT NULL,
  roleId         UUID NOT NULL,
  systemStatusId INT,
  CONSTRAINT "UserInRoles_pkey" PRIMARY KEY (userId, roleid)
)
