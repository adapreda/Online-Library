create table AUTORI
(
    COD_AUTOR     NUMBER(10)    not null
        constraint PK_CODURI_AUTORI
            primary key,
    NUME_AUTOR    VARCHAR2(100) not null,
    PRENUME_AUTOR VARCHAR2(100) not null,
    DATA_NASTERII DATE          not null,
    PRESTIGIU     VARCHAR2(100) not null
        constraint CHECK_PRESTIGIU_AUTOR
            check (PRESTIGIU IN (
                                 'RECUNOASTERE LOCALA',
                                 'RECUNOASTERE NATIONALA',
                                 'RECUNOASTERE INTERNATINOALA',
                                 'PRESTIGIU CONSACRAT'
                )),
    GEN           VARCHAR2(15)  not null
        constraint CHECK_GEN_AUTOR
            check (GEN IN ('M', 'F'))
)
/

