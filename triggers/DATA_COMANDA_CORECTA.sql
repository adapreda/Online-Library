create trigger DATA_COMANDA_CORECTA
    before insert or update of DATA_PLASARE
    on COMENZI
    for each row
BEGIN
    IF :NEW.DATA_PLASARE > SYSDATE THEN
        RAISE_APPLICATION_ERROR(
        -20060, 'DATA COMENZII NU POATE FI IN VIITOR'
        );
    end if;
end;
/

