--***SQL DDL und DML*** Klasse : FI2C
USE DbLKap09; --Übungsdatenbank auswählen
--***DDL(CREATE,ALTER u. DROP)***
--Tabelle Personal löschen z.B. bei Fehler ->Vorsicht mit Daten
DROP TABLE tbl_07bPersonal;
--Tabelle Personal anlegen
CREATE TABLE tbl_07bPersonal
(
--Attributbezeichner -  Datentyp  - Funktion
   Persnr               INTEGER     PRIMARY KEY,
   Name                 CHAR(35)    NOT NULL,
   Ort                  CHAR(25),
   Vorgesetzt           INTEGER     REFERENCES tbl_07bPersonal,
   Gehalt               NUMERIC(9,2)
);
--Tabelle Kunde anlegen
CREATE TABLE tbl_07bKunde
(
   Nr        INTEGER     PRIMARY KEY,
   Name      CHAR(35)    NOT NULL,
   Strasse   CHAR(25),
   PLZ       CHAR(15),
   Ort       CHAR(25)      
);
--Tabelle Auftrag anlegen
CREATE TABLE tbl_07bAuftrag
(
   Nr        INTEGER     PRIMARY KEY,
   Datum     DATETIME,
   KundNr    INTEGER   REFERENCES tbl_07bKunde,
   PersNr    INTEGER   REFERENCES tbl_07bPersonal
);
--Tabelle Auftrag löschen -> Vorsicht mit Daten !!!
DROP TABLE tbl_07bAuftrag;
--Tabelle neu anlegen mit AUTOincrement und Defaultwert für Datum
CREATE TABLE tbl_07bAuftrag
(
   Nr        INTEGER   IDENTITY(1,1) PRIMARY KEY,
   Datum     DATETIME  DEFAULT GETDATE(),
   KundNr    INTEGER   REFERENCES tbl_07bKunde,
   PersNr    INTEGER   REFERENCES tbl_07bPersonal
);
-- Tabelle ändern
--Attribut hinzufügen
ALTER TABLE tbl_07bKunde
ADD Bemerkung CHAR(20);
--Attribut löschen
ALTER TABLE tbl_07bKunde
DROP COLUMN Bemerkung;
--***DML - INSERT,UPDATE, DELETE***
--INSERT - > alle Attribute
--***Tabelle Personal
INSERT INTO tbl_07bPersonal
VALUES(1,'Maria Forster','Regensburg',NULL,6800.00);
INSERT INTO tbl_07bPersonal
VALUES(2,'Anna Kraus','Regensburg',1,3600.00);
--Referenzen achten -> bevor Nr 3 eingetragen werden kann muss
--Persnr 6 eingetragen werden
INSERT INTO tbl_07bPersonal
VALUES(6,'Marianne Lambert','Landshut',NULL,5500.00);
--***Tabelle Kunde
INSERT INTO tbl_07bKunde
VALUES(1,'Fahrad Shop','Obere Regenstrasse','D-6177','Regensburg');
--****Auftrag muss Autoincrement und Default enthalten!!!!
--INSERT - > nicht alle Attribute
--***Tabelle Auftrag
INSERT INTO tbl_07bAuftrag(KundNr,PersNr)
VALUES(1,1);

--***09.04.2013****
--Update alle Datensätze
UPDATE tbl_07bAuftrag
SET Datum ='01.01.2013';
--Update einzelne  Datensätze
UPDATE tbl_07bAuftrag
SET Datum ='01.01.2000'
WHERE Nr=1;
