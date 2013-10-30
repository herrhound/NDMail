create table dict.Language (
	LanguageId	integer	CONSTRAINT PK_dict_LanguageId PRIMARY KEY,
	Name		varchar(256) 	NOT NULL,
	Description	varchar(1024) 	NULL,
	Code		varchar(8)	NULL
)