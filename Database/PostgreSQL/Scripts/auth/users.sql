CREATE TABLE auth."Users"(
	userId uuid not null primary key DEFAULT uuid_generate_v4(),
	userName varchar(50) not null,
	userPassword varchar(150) not null,
	email varchar(150) null,
	secretQeustion varchar(150) null,
	secretAnswer varchar(150) null,
	systemStatusId int
)
