create table COMENZI
(
    COD_COMANDA  NUMBER(10) not null
        constraint PK_CODURI_COMENZI
            primary key,
    COD_UT       NUMBER(10) not null
        constraint FK_COMENZI_UTILIZATORI
            references UTILIZATORI,
    COD_DIS      NUMBER(10)
        constraint FK_COMENZI_DISCOUNTURI
            references DISCOUNTURI,
    DATA_PLASARE DATE       not null
)
/

