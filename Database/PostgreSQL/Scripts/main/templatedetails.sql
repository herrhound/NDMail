DROP TABLE main.templatedetails

CREATE TABLE main.templatedetails
(
    templatedetailsid   SERIAL PRIMARY KEY  NOT NULL,
    fromemail           VARCHAR(254)        NOT NULL,
    subject             VARCHAR(998)        NOT NULL,
    body                VARCHAR(2048)       NOT NULL,
    templateid          INT                 NOT NULL,
    languageid          INT                 NOT NULL,
    applicationid       UIID                NOT NULL,
    systemstatusid      INT                 NOT NULL,
    transactionid       INT                 NOT NULL
);


ALTER TABLE main.templatedetails
ADD CONSTRAINT Fk_main_Template_ApplicationId FOREIGN KEY (applicationid)
REFERENCES auth.application (applicationId) MATCH SIMPLE;

ALTER TABLE main.templatedetails
ADD CONSTRAINT Fk_main_Template_SystemStatusId FOREIGN KEY (systemstatusid)
REFERENCES dict.systemstatus (systemstatusid) MATCH SIMPLE;

ALTER TABLE main.templatedetails
ADD CONSTRAINT Fk_main_Template_TransactionId FOREIGN KEY (transactionid)
REFERENCES main.transaction (transactionid) MATCH SIMPLE;

ALTER TABLE main.templatedetails
ADD CONSTRAINT Fk_main_TemplateDetails_LanguageId FOREIGN KEY (languageid)
REFERENCES dict.language (languageid) MATCH SIMPLE;
