create table EDITURI
(
    COD_EDITURA     NUMBER(10)    not null
        constraint PK_CODURI_EDITURI
            primary key,
    NUME_EDITURA    VARCHAR2(100) not null,
    DATA_INFIINTARE DATE
)
/

