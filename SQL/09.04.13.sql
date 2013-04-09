--***SQL DDL und DML*** Klasse : FI2C
USE DbLKap09; --Übungsdatenbank auswählen
--***DDL(CREATE,ALTER, DROP) ***
--Tabelle Personal löschen -> Vorsicht mit Daten !!!
DROP TABLE tbl_07bPersonal;
--Tabelle Personal anlegen
CREATE TABLE tbl_xxxPersonal
(
--Attributbezeichner -  Datentyp  - Funktion
   Persnr               INTEGER     PRIMARY KEY,
   Name                 CHAR(35)    NOT NULL,
   Ort                  CHAR(25),
   Vorgesetzt           INTEGER     REFERENCES tbl_xxxPersonal,
   Gehalt               NUMERIC(9,2)
);
