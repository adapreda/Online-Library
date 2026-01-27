create trigger UPDATE_EBOOK_DRAMA
    after insert
    on COMENZI
BEGIN
    UPDATE EBOOKURI
    SET PRET = PRET + 1
    WHERE COD_CATEGORIE IN (
        SELECT
            COD_CATEGORIE
        FROM CATEGORII
        WHERE NUME_CAT = 'DRAMA'
        );
END;
/

