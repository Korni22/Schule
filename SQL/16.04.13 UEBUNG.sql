--Übung(SQL-2 : DDL u. DML)
USE DbLKap09; --Übungsdatenbabk auswählen

--*************************************************************************
--Übungsaufgabe 1 
--Formulieren Sie zu den folgenden Aufgabenstellung die SQL-II-Statements 
--Erzeugen Sie die Tabelle Artikel mit den Attributen Nr, Name , Anzahl
--Fügen Sie in diese Tabelle folgende Datensätze ein 
DROP TABLE tbl_ueArtikel08b

CREATE TABLE tbl_ueArtikel08b(
Nr  INTEGER		PRIMARY KEY	IDENTITY(100,10),
Nam	CHAR(3),
Anzahl	INTEGER,
);				
--100 , AAA , 10
INSERT INTO tbl_ueArtikel08b
VALUES('AAA', 10);
--110 , BBB , 20
INSERT INTO tbl_ueArtikel08b
VALUES('BBB', 20);
--120 , CCC,   5
INSERT INTO tbl_ueArtikel08b
VALUES('CCC', 5);

--Ändern Sie die Anzahl 20 auf 25

UPDATE tbl_ueArtikel08b
SET Anzahl = 25 WHERE Nr = 110;

--Fügen Sie die Spalte Preis ein

ALTER TABLE tbl_ueArtikel08b
ADD Preis NUMERIC;
DROP COLUMN Preis;

--Füllen Sie Spalte Preis mit :	
--Nr 100 – 5.00
UPDATE tbl_ueArtikel08b
SET Preis = 5.00 WHERE Nr = 100;
--Nr 110 – 10.00 
UPDATE tbl_ueArtikel08b
SET Preis = 10.00 WHERE Nr = 110;
--Nr 120 – 20.00
UPDATE tbl_ueArtikel08b
SET Preis = 20.00 WHERE Nr = 120;

--Erhöhen Sie alle Preise um 10%
UPDATE tbl_ueArtikel08b
SET Preis = Preis*1.1;

--Löschen Sie die Datensätze mit Nr <120
DELETE FROM tbl_ueArtikel08b
WHERE Nr < 120;
