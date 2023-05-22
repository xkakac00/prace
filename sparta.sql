-- Vytvoření SQL databáze
CREATE database sparta;
-- Vybrani databáze sparta
USE sparta;
-- Vytoření tabulky hráči
CREATE table hraci (
   id int PRIMARY KEY AUTO_INCREMENT,
   jmeno varchar (50),
   prijmeni varchar(50),
   post varchar (50),   
   narozen date,
   vyska int,
   vaha int 
);
-- Vložení záznamu do tabulky
INSERT INTO hraci (jmeno,prijmeni,post,narozen,vyska,vaha) VALUES ("Matěj","Kovář","brankář","2000-05-17",196,88);
-- Vložení více záznamu v dotazu INSERT
INSERT INTO hraci (jmeno,prijmeni,post,narozen,vyska,vaha) VALUES ("Milan","Heča","brankář","1991-03-21",187,85),("Vojtěch","Vorel","brankář","1996-06-18",192,85);
-- Vložení dalších údaju
INSERT INTO hraci (jmeno,prijmeni,post,narozen,vyska,vaha) VALUES ("Ondřej","Čelůstka","obránce","1989-06-18",187,86),
("Martin","Vitík","obránce","1996-06-18",193,83),
("Filip","Panák","obránce","1995-11-02",189,81),
("Jaroslav","Zelený","obránce","1992-08-20",190,81),
("Tomáš","Wiesner","obránce","1997-07-17",175,75),
("David","Pavelka","záložník","1991-05-18",185,80),
("Adam","Karabec","záložník","2003-07-02",187,78),
("Lukáš","Sadílek","záložník","1996-05-23",178,72),
("Jakub","Pešek","záložník","1993-06-24",67,174),
("Awer","Mabil","utočník","1995-09-15",178,73),
("Jan","Kuchta","utočník","1997-01-08",81,185),
("Tomáš","Čvančara","utočník","2000-08-13",190,82);
-- vyber vsechny hrace, kteři hrajou v obraně
SELECT * from hraci where post="obrance";
-- vyber všechny hrače, kteří mají výšku větší jak 185
SELECT * FROM hraci where vyska > 185;
-- vyber vsechny hrace, kteri maji vysku vetsi jak 185 a vahu mensi jak 80
SELECT * FROM hraci where vyska > 185 AND vaha < 80;
-- vyber jmeno, prijmeni pro hrace, kteri jsou brankar
SELECT jmeno,prijmeni FROM hraci where post="brankář";
-- vyber hrace, kteri maji vysku mezi 180 a 190
SELECT * FROM hraci where vyska BETWEEN 180 AND 190;
-- vypocitej průměrnou výšku fotbalisty
SELECT AVG(vyska) FROM hraci; 
--  vypočet počtu hráču, kteří mají post brankář
SELECT COUNT(*) from hraci WHERE post="brankář";
--- Uprav hračovo jmeno, které 
UPDATE hraci SET jmeno="Tomáš", prijmeni="Rosicky" WHERE id=15;
--Přejmenování tabulky z hraci na fotbalisti
ALTER TABLE hraci RENAME TO fotbalisti;





