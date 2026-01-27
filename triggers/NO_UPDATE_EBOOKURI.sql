create trigger NO_UPDATE_EBOOKURI
    before update
    on EBOOKURI
    for each row
BEGIN
    IF NOT UPDATING('PRET') THEN
        RAISE_APPLICATION_ERROR(
        -20190,
        'DOAR PRETUL UNUI EBOOK POATE FI MODIFICAT'
    );
    end if;

END;
/

