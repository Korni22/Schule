--Übung(SQL-2 : DDL u. DML)
USE DbLKap09; --Übungsdatenbabk auswählen

DROP TABLE tbl_07buebung;

--Tabelle Personal anlegen
CREATE TABLE tbl_07buebung
(
--Attributbezeichner -  Datentyp  - Funktion
   nr                INTEGER     PRIMARY KEY,
   name              Char(3)     NOT NULL,
   anzahl            Integer     NOT NULL,
);
--Übungsaufgabe 1 
--Formulieren Sie zu den folgenden Aufgabenstellung die SQL-II-Statements 
--Erzeugen Sie die Tabelle Artikel mit den Attributen Nr, Name , Anzahl
--Fügen Sie in diese Tabelle folgende Datensätze ein 
--100 , AAA , 10
--110 , BBB , 20
--120 , CCC,   5

Insert INTO tbl_07buebung
VALUES(100, 'AAA', 10);

Insert INTO tbl_07buebung
VALUES(110, 'BBB', 20);

Insert INTO tbl_07buebung
VALUES(120, 'CCC', 5);

--Ändern Sie die Anzahl 20 auf 25

UPDATE tbl_07buebung
SET anzahl=25 WHERE anzahl=20

--Fügen Sie die Spalte Preis ein

ALTER TABLE tbl_07buebung
ADD preis numeric;

--Füllen Sie Spalte Preis mit :  Nr 100 – 5.00
--Nr 110 – 10.00 
--Nr 120 – 20.00

--Erhöhen Sie alle Preise um 10%

--Löschen Sie die Datensätze mit Nr <120
