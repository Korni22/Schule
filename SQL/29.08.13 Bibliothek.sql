USE dblkap09

CREATE TABLE tbl_ueArtikel07b_Buchexemplar(
ExNr  INTEGER     PRIMARY KEY IDENTITY(100,10),
ISBN INTEGER,
Standort Char(15),
);

CREATE TABLE tbl_ueArtikel07b_Autor(
AutorNr     INTEGER     PRIMARY KEY IDENTITY(100,10),
Name        INTEGER,
Vorname     Char(15),
GebDatum    DATE,
TodDatum    DATE,
Werke       Char (100),
Beruf       Char (20),
Wohnort     Char (30),
);

CREATE TABLE tbl_ueArtikel07b_BuchtypAutor(
AutorNr     INTEGER     PRIMARY KEY IDENTITY(100,10),
Name        INTEGER,
Vorname     Char(15),
GebDatum    DATE,
TodDatum    DATE,
Werke       Char (100),
Beruf       Char (20),
Wohnort     Char (30),
);

CREATE Table tbl_07b_ausleihvorgang(
AusleihNr INTEGER PRIMARY KEY,
KundenNr INTEGER FOREIGN KEY,
ExNr INTEGER FOREING KEY,
Ausleihdatum DATE,
Rückgabedatum DATE,
);

DROP TABLE tbl_03bbuchtypautor
CREATE TABLE tbl_03bbuchtypautor
(
ISBN        INTEGER ,PRIMARY KEY , FOREIGN KEY to buchtitel(isbn)
AutorNr     INTEGER (PRIMARY KEY, FOREIGN KEY to tbl_03autor(autornr)
);
