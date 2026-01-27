# **Librarie Digitala**
## **Baza de date pentru gestionarea unui magazin online de ebook-uri**


Proiectul "Librarie Digitala" consta in proiectarea si implementarea unei baze de date relationale destinata gestionarii activitatii unui magazin online de ebook-uri. Baza de date este realizata in Oracle Database 21c, utilizand limbajul SQL si extensiile PL/SQL, si urmareste respectarea principiilor de modelare conceptuala, logica si fizica studiate in cadrul cursului Sisteme de Gestionare si Baze de Date.

Implementarea acopera atat structura datelor, cat si regulile de business, validate prin constrangeri, triggere si subprograme stocate.
Pentru implementare am utilizat Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production, Windows 11, fara ajutorul unei masini virtuale.


Scopul principal al bazei de date este de a permite:

- administrarea eficienta a ebook-urilor disponibile intr-o librarie digitala;
- gestionarea autorilor, editurilor si categoriilor literare;
- evidenta utilizatorilor si a comenzilor plasate de acestia;
- aplicarea si monitorizarea discounturilor;
- pastrarea istoricului comenzilor si recenziilor;
- validarea automata a regulilor de integritate si a cerintelor functionale.

Baza de date ofera suport complet pentru functionarea unei platforme de vanzare de carti electronice.

Diagrama entitate-relatie descrie structura logica a bazei de date, evidentiind entitatile principale, atributele acestora si relatiile dintre ele.

Entitatile fundamentale sunt:

- AUTORI
- EDITURI
- CATEGORII
- EBOOKURI
- UTILIZATORI
- COMENZI
- DETALII_PRODUS
- RECENZII
- DISCOUNTURI




<img width="928" height="701" alt="image" src="https://github.com/user-attachments/assets/4405ff47-4eb7-4a8a-88db-66d76e20bd1c" />

Diagrama conceptuala detaliaza structura fiecarei entitati, evidentiind atributele, cheile primare si cheile straine, precum si legaturile dintre tabele.


<img width="971" height="771" alt="image" src="https://github.com/user-attachments/assets/ee908015-d754-4616-8da3-a86dd7b98802" />

Implementarea bazei de date include:

- definirea tabelelor cu chei primare si chei externe;
- constrangeri de tip NOT NULL, UNIQUE, CHECK;
- utilizarea SEQUENCE pentru generarea automata a identificatorilor;
- respectarea regulilor de integritate referentiala.


Regulile de business sunt implementate prin:

- constrangeri CHECK (ex: valori valide pentru rating, pret, numar de pagini);
- triggere LMD (la nivel de comanda si linie);
- triggere LDD (interzicerea stergerii unor obiecte critice).

Exemple de reguli implementate:

- un utilizator poate lasa recenzie doar pentru ebook-uri achizitionate;
- comenzile nu pot fi modificate sau sterse;
- ebook-urile comandate nu pot fi sterse;
- discounturile expirate nu pot fi aplicate;
- datele calendaristice nu pot fi in viitor.

Proiectul contine:
- proceduri stocate cu:
  - tablouri indexate;
  - tablouri imbricate;
  - VARRAY;
- functii ce utilizeaza interogari complexe cu minimum 3-5 tabele;
- utilizarea cursoarelor simple si parametrizate;
- tratarea exceptiilor standard si definite de utilizator.

Este implementat un pachet PL/SQL dedicat gestionarii recenziilor, care include:

- tipuri de date complexe (RECORD, TABLE);
- functii pentru calculul mediei ratingurilor;
- proceduri pentru adaugarea si stergerea recenziilor.

Acest pachet ofera un flux complet de gestionare a recenziilor in cadrul aplicatiei.


