create trigger DELETE_UTILIZATORI
    instead of delete
    on VIEW_UTILIZATORI
    for each row
BEGIN
    UPDATE UTILIZATORI
    SET STATUS = 'INACTIV'
    WHERE COD_UT = :OLD.COD_UT;

    DBMS_OUTPUT.PUT_LINE('UTILIZATORUL A FOST DEZACTIVAT');

end;
/

