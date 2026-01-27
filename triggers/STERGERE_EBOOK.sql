create trigger STERGERE_EBOOK
    before delete
    on EBOOKURI
    for each row
DECLARE
    CONTOR NUMBER;
BEGIN
    SELECT
        COUNT(*) INTO CONTOR
    FROM DETALII_PRODUS DP
    WHERE DP.COD_EBOOK = :OLD.COD_EBOOK;

    IF CONTOR > 0 THEN
        RAISE_APPLICATION_ERROR(
        -20020, 'EBOOKUL NU POATE FI STERS: A FOST DEJA COMANDAT DE UTILIZATORI'
        );
    end if;
end;
/

