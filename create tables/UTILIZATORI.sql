create table UTILIZATORI
(
    COD_UT     NUMBER(10)    not null
        constraint PK_CODURI_UTILIZATORI
            primary key,
    NUME_UT    VARCHAR2(100) not null,
    PRENUME_UT VARCHAR2(100) not null,
    EMAIL      VARCHAR2(100) not null
        constraint EMAIL_UT_UNIC
            unique,
    TELEFON    VARCHAR2(15)  not null
        constraint CHECK_NUMAR_TELEFON
            check (LENGTH(TELEFON) = 10 AND TELEFON BETWEEN '0000000000' AND '9999999999'),
    STATUS     VARCHAR2(20)  not null
        constraint CHECK_STATUS_UTILIZATOR
            check (STATUS IN ('ACTIV', 'INACTIV'))
)
/

