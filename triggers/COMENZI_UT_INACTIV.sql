create trigger COMENZI_UT_INACTIV
    before insert
    on COMENZI
    for each row
DECLARE
    STATUS_UT UTILIZATORI.STATUS%TYPE;
BEGIN

    SELECT
        U.STATUS INTO STATUS_UT
    FROM UTILIZATORI U
    WHERE COD_UT = :NEW.COD_UT;

    IF STATUS_UT <> 'ACTIV' THEN
        RAISE_APPLICATION_ERROR(
        -20086, 'DOAR UTILIZATORII ACTIVI POT INSERA COMENZI'

        );
    end if;

end;
/

