create trigger NO_UPDATE_DELETE_COMENZI
    before update or delete
    on COMENZI
BEGIN
    RAISE_APPLICATION_ERROR(
        -20087,
        'COMENZILE NU POT FI MODIFICATE SAU STERSE'
    );
END;
/

