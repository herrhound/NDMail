CREATE TABLE auth."UserInRoles"(
	userId uuid not null,
	roleId uuid not null,
	systemStatusId int,
	CONSTRAINT "UserInRoles_pkey" PRIMARY KEY (userId, roleid)
)
