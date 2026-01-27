create FUNCTION MAXIM_COMANDA
RETURN VARCHAR2 IS
NUME_UTILIZATOR_MAX VARCHAR2(201);
NUMAR_CARTI_MAX NUMBER;

BEGIN

        SELECT
            NUME_UTILIZATOR, NUMAR_CARTI INTO NUME_UTILIZATOR_MAX, NUMAR_CARTI_MAX
        FROM (
                SELECT
                    U.PRENUME_UT || ' ' || U.NUME_UT NUME_UTILIZATOR,
                    SUM(DP.NR_BUCATI) NUMAR_CARTI
                FROM UTILIZATORI U
                JOIN COMENZI C ON C.COD_UT = U.COD_UT
                JOIN DETALII_PRODUS DP ON DP.COD_COMANDA = C.COD_COMANDA
                GROUP BY U.PRENUME_UT, U.NUME_UT
             )
        WHERE NUMAR_CARTI = (
                SELECT
                    MAX(NR_CARTI)
                FROM (
                        SELECT
                            SUM(DP.NR_BUCATI) NR_CARTI
                        FROM COMENZI C
                        JOIN DETALII_PRODUS DP ON DP.COD_COMANDA = C.COD_COMANDA
                        GROUP BY C.COD_UT
                     )
                            );

    DBMS_OUTPUT.PUT_LINE('NUMARUL MAXIM DE CARTI CUMPARATE ESTE ' || NUMAR_CARTI_MAX || ', DE CATRE ');

    RETURN NUME_UTILIZATOR_MAX;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('NU EXISTA COMENZI IN BAZA DE DATE');
            RETURN 'NU EXISTA COMENZI';
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTI UTILIZATORI CU NUMAR MAXIM DE CARTI CUMPARATE');
            RETURN 'PREA MULTI UTILIZATORI';
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('EROARE');
            RETURN 'EROARE';

END MAXIM_COMANDA;
/

