USE dblkap09

CREATE TABLE tbl_07bautor

(
--Attributbezeichner -  Datentyp  - Funktion
   autornr              INTEGER     PRIMARY KEY,
   Name                 CHAR(35)    NOT NULL,
   vorname              CHAR(35),
  geboren               DATE,
);


CREATE TABLE tbl_ueArtikel07b_Buchexemplar(
ExNr  INTEGER     PRIMARY KEY IDENTITY(100,10),
ISBN INTEGER,
Standort Char(15),
);
