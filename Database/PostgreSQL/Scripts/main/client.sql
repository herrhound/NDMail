create table main.client (
  clientId serial not null primary key,
  corporateId varchar(64) not null,
  corporateName varchar(1024) not null,
  applicationId uuid not null,
  systemStatusID int not null,
  transactionId int not null
) ;

alter table main.client
    add constraint main_client_systemStatusId foreign key (systemStatusID)
      references dict.systemstatus (systemstatusid) match simple ;

alter table main.client
    add constraint main_client_transactionId foreign key (transactionId)
      references main.transaction (transactionid) match simple ;

