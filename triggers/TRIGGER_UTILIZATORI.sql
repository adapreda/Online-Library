create trigger TRIGGER_UTILIZATORI
    before insert or update or delete
    on UTILIZATORI
    for each row
BEGIN

        IF DELETING THEN
            RAISE_APPLICATION_ERROR(
            -20084, 'NU PUTETI STERGE UN UTILIZATOR. FOLOSITI VIEW_UTILIZATORI'
            );
        end if;

        IF UPDATING('COD_UT') THEN
            RAISE_APPLICATION_ERROR(
            -20085, 'NU PUTETI SCHIMBA CODUL UNUI UTILIZATOR'
            );
        end if;

        IF INSERTING THEN
            DBMS_OUTPUT.PUT_LINE('ATI INTRODUS UN UTILIZATOR NOU');
        end if;

end;
/

