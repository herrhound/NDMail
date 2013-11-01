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
