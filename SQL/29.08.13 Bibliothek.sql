--Übung(SQL-2 : DDL u. DML)
USE DbLKap09; --Übungsdatenbabk auswählen

--*************************************************************************
--Übungsaufgabe 2
DROP TABLE tbl_ueArtikel07b

CREATE TABLE tbl_ueArtikel08b(
Nr  INTEGER		PRIMARY KEY	IDENTITY(100,10),
Nam	CHAR(3),
Anzahl	INTEGER,
);	
