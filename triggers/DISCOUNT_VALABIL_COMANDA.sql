create trigger DISCOUNT_VALABIL_COMANDA
    before insert or update of COD_DIS
    on COMENZI
    for each row
DECLARE
    DATA_VALABILITATE DATE;
BEGIN



    IF :NEW.COD_DIS IS NULL THEN
        RETURN;
    end if;

    SELECT
        VALABILITATE INTO DATA_VALABILITATE
    FROM DISCOUNTURI D
    WHERE D.COD_DIS = :NEW.COD_DIS;

    IF DATA_VALABILITATE < :NEW.DATA_PLASARE THEN
        RAISE_APPLICATION_ERROR(
        -20051, 'DISCOUNTUL NU ESTE AVLABIL LA DATA COMENZII'
        );
    end if;

end;
/

