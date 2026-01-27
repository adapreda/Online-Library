create trigger DATA_INFIINTARE_EDITURA_CORECTA
    before insert or update of DATA_INFIINTARE
    on EDITURI
    for each row
BEGIN
    IF :NEW.DATA_INFIINTARE > SYSDATE THEN
        RAISE_APPLICATION_ERROR(
            -20181,
            'DATA INFIINTARII EDITURII NU POATE FI IN VIITOR'
        );
    END IF;
END;
/

