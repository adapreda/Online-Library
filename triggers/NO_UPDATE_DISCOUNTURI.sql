create trigger NO_UPDATE_DISCOUNTURI
    before update
    on DISCOUNTURI
BEGIN
    RAISE_APPLICATION_ERROR(
        -20200,
        'VALORILE DISCOUNTURILOR NU POT FI MODIFICATE'
    );
END;
/

