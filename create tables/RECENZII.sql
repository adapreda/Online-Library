create table RECENZII
(
    COD_RECENZIE   NUMBER(10) not null
        constraint PK_CODURI_RECENZII
            primary key,
    COD_EBOOK      NUMBER(10) not null
        constraint FK_REC_EBOOK
            references EBOOKURI,
    COD_UT         NUMBER(10) not null
        constraint FK_REC_UT
            references UTILIZATORI,
    DATA_PUBLICARE DATE,
    RATING         NUMBER(2)  not null
        constraint CHECK_RATING_15
            check (RATING >= 1 AND RATING <= 5)
)
/

