create table EBOOKURI
(
    COD_EBOOK      NUMBER(10)    not null
        constraint PK_CODURI_EBOOKURI
            primary key,
    COD_AUTOR      NUMBER(10)    not null
        constraint FK_EBOOK_AUTOR
            references AUTORI,
    COD_EDITURA    NUMBER(10)    not null
        constraint FK_EBOOK_EDITURA
            references EDITURI,
    COD_CATEGORIE  NUMBER(10)    not null
        constraint FK_EBOOK_CATEGORIE
            references CATEGORII,
    NUME_EBOOK     VARCHAR2(100) not null,
    DATA_PUBLICARE DATE          not null,
    LIMBA          VARCHAR2(100) not null,
    NR_PAGINI      NUMBER(5)     not null
        constraint CHECK_NR_PAG_POZITIV
            check (NR_PAGINI > 0),
    PRET           NUMBER(8, 2)  not null
        constraint CHECK_PRET_POZITIV
            check (PRET > 0)
)
/

