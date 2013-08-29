 
use dblkap09

create table tbl_03bautor

(
--Attributbezeichner -  Datentyp  - Funktion
   autornr               INTEGER     PRIMARY KEY,
   Name                 CHAR(35)    NOT NULL,
   vorname                 CHAR(35),
  geboren        date   ,
  
);
