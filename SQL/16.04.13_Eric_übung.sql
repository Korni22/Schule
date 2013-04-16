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
SET anzahl=25 WHERE anzahl=20;

--Fügen Sie die Spalte Preis ein

ALTER TABLE tbl_07buebung
ADD preis numeric;

--Füllen Sie Spalte Preis mit :  Nr 100 – 5.00
--Nr 110 – 10.00 
--Nr 120 – 20.00

UPDATE tbl_07buebung
SET preis=5.00 WHERE nr=100;

UPDATE tbl_07buebung
SET anzahl=10.00 WHERE nr=110;

UPDATE tbl_07buebung
SET anzahl=20.00 WHERE nr=120;

--Erhöhen Sie alle Preise um 10%

UPDATE tbl_07buebung
SET preis=preis*1.1;

--Löschen Sie die Datensätze mit Nr <120

DELETE FROM tbl_07buebung
WHERE preis=<120;
