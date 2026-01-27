create table DETALII_PRODUS
(
    COD_DET     NUMBER(10) not null
        constraint PK_CODURI_DETPRODUSE
            primary key,
    COD_EBOOK   NUMBER(10) not null
        constraint FK_DETPRODUS_EBOOK
            references EBOOKURI,
    COD_COMANDA NUMBER(10) not null
        constraint FK_DETPRODUS_COMANDA
            references COMENZI,
    NR_BUCATI   NUMBER(4)  not null
        constraint CHECK_NR_BUCATI_POZ
            check (NR_BUCATI > 0),
    constraint PRODUS_UNIC
        unique (COD_EBOOK, COD_COMANDA)
)
/

