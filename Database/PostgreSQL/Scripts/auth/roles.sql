CREATE TABLE auth."Roles"(
	roleId uuid not null primary key DEFAULT uuid_generate_v4(),
	roleName varchar(50) not null,
	roleDescription varchar(150) null,
	systemStatusId int
)
