create trigger DATA_NASTERE_AUTOR_CORECTA
    before insert or update of DATA_NASTERII
    on AUTORI
    for each row
BEGIN
    IF :NEW.DATA_NASTERII > SYSDATE THEN
        RAISE_APPLICATION_ERROR(
            -20180,
            'DATA NASTERII AUTORULUI NU POATE FI IN VIITOR'
        );
    END IF;
END;
/

