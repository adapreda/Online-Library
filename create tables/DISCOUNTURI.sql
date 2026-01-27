create table DISCOUNTURI
(
    COD_DIS      NUMBER(10)    not null
        constraint PK_CODURI_DISCOUNTURI
            primary key,
    NUME_DIS     VARCHAR2(100) not null
        constraint NUME_DISCOUNTURI_UNICE
            unique,
    PROCENT      NUMBER(5, 2)  not null
        constraint CHECK_PROCENT_DISC_POZITIV
            check (PROCENT > 0 AND PROCENT <= 100),
    VALABILITATE DATE          not null
)
/

