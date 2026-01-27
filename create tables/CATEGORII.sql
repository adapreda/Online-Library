create table CATEGORII
(
    COD_CATEGORIE NUMBER(10)    not null
        constraint PK_CODURI_CATEGORII
            primary key,
    NUME_CAT      VARCHAR2(100) not null
        constraint NUME_CAT_UNICE
            unique
)
/

