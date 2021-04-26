/* CREATE DATABASE */
DROP DATABASE if exists donitsikauppa;

CREATE DATABASE donitsikauppa;

USE donitsikauppa;

/* Taulut */

CREATE TABLE asiakas (
asiakasID SMALLINT AUTO_INCREMENT,
snimi CHAR(30) NOT NULL,
enimi CHAR(30) NOT NULL,
osoite CHAR(50),
postinro CHAR(5), 
postitmp CHAR(10), 
puhnro INT,
PRIMARY KEY (asiakasID),
UNIQUE (snimi),
UNIQUE (enimi)
);


CREATE TABLE tilaus (
tilausnro INTEGER NOT NULL,
asiakasID SMALLINT(6) NOT NULL, 
tilauspvm timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
tila CHAR(1),
PRIMARY KEY (tilausnro),
FOREIGN KEY (asiakasID) REFERENCES asiakas(asiakasID)
);


CREATE TABLE tuoteryhma (
trnro SMALLINT AUTO_INCREMENT,
trnimi CHAR(25),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;


CREATE TABLE tuote (
tuotenro INTEGER AUTO_INCREMENT,
tuotenimi CHAR(30) NOT NULL,
hinta DECIMAL(5,2),
kustannus DECIMAL(5,2), 
trnro SMALLINT NOT NULL,
maku char(20),
taytemaku char(20),
kuva char(100),
CONSTRAINT tuote_pk PRIMARY KEY (tuotenro),
CONSTRAINT tuote_ryhma_fk FOREIGN KEY (trnro) 
           REFERENCES tuoteryhma (trnro)
);


CREATE TABLE setti (
setin_nimi char(30) NOT NULL,
tuotenro integer NOT NULL,
tuote1 integer NOT NULL,
tuote2 integer NOT NULL,
tuote3 integer NOT NULL,
FOREIGN KEY(tuotenro) REFERENCES tuote(tuotenro),
FOREIGN KEY(tuote1) REFERENCES tuote(tuotenro),
FOREIGN KEY(tuote2) REFERENCES tuote(tuotenro),
FOREIGN KEY(tuote3) REFERENCES tuote(tuotenro)
);


CREATE TABLE tilausrivi (
tilausnro INTEGER NOT NULL,
rivinro SMALLINT NOT NULL,
tuotenro INTEGER, 
kpl INTEGER,
CONSTRAINT tilausrivi_pk PRIMARY KEY (tilausnro, rivinro),
CONSTRAINT tilausrivi_tuote_fk FOREIGN KEY (tuotenro) 
           REFERENCES tuote (tuotenro)
);


/* INSERT luontilauseet */


INSERT INTO tuoteryhma(trnimi) VALUES ('Virvokkeet');
INSERT INTO tuoteryhma(trnimi) VALUES ('Pikkudonitsit');
INSERT INTO tuoteryhma(trnimi) VALUES ('Donitsit');
INSERT INTO tuoteryhma(trnimi) VALUES ('Donitsisetit');
INSERT INTO tuoteryhma(trnimi) VALUES ('Täytetyt donitsit');
INSERT INTO tuoteryhma(trnimi) VALUES ('Muut leivonnaiset');



INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi', 4.90, 2.90, 1, 'vaalea', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi', 4.90, 2.90, 1, 'tumma', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tee', 4.90, 2.90, 1, NULL, NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Pepsi', 5.90, 2.90, 1, 'pepsi', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Jaffa', 5.90, 2.90, 1, 'jaffa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vesi', 2.90, 1, 1, NULL, NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mehu Mansikka', 3.90, 1.90, 1, 'mansikka', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mehu Päärynä', 3.90, 1.90, 1, 'päärynä', NULL, NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kinuski Pikkudonitsi', 2.50, 1, 2, 'kinuski', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Pikkudonitsi', 2.50, 1, 2, 'suklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mansikka Pikkudonitsi', 2.50, 1, 2, 'mansikka', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tumma suklaa Pikkudonitsi', 2.50, 1, 2, 'tumma suklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Valkosuklaa Pikkudonitsi', 2.50, 1, 2, 'valkosuklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Lakritsi Pikkudonitsi', 2.50, 1, 2, 'kinuski', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Pikkudonitsi', 2.50, 1, 2, 'hasselpähkinä', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Salmiakki Pikkudonitsi', 2.50, 1, 2, 'salmiakki', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vanilja Pikkudonitsi', 2.50, 1, 2, 'vanilja', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vihreä kuula Pikkudonitsi', 2.50, 1, 2, 'vihreä kuula', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Pikkudonitsi', 2.50, 1, 2, 'kahvi', NULL, NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kinuski Donitsi', 3.50, 1.50, 3, 'kinuski', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Donitsi', 3.50, 1.50, 3, 'suklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mansikka Donitsi', 3.50, 1.50, 3, 'mansikka', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tumma suklaa Donitsi', 3.50, 1.50, 3, 'tumma suklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Valkosuklaa Donitsi', 3.50, 1.50, 3, 'valkosuklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Lakritsi Donitsi', 3.50, 1.50, 3, 'kinuski', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Donitsi', 3.50, 1.50, 3, 'hasselpähkinä', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Salmiakki Donitsi', 3.50, 1.50, 3, 'salmiakki', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vanilja Donitsi', 3.50, 1.50, 3, 'vanilja', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vihreä kuula Donitsi', 3.50, 1.50, 3, 'vihreä kuula', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Donitsi', 3.50, 1.50, 3, 'kahvi', NULL, NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kinuski Donitsi', 4.50, 2.50, 5, 'kinuski', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Donitsi', 4.50, 2.50, 5, 'suklaa', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mansikka Donitsi', 4.50, 2.50, 5, 'mansikka', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tumma suklaa Donitsi', 4.50, 2.50, 5, 'tumma suklaa', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Valkosuklaa Donitsi', 4.50, 2.50, 5, 'valkosuklaa', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Lakritsi Donitsi', 4.50, 2.50, 5, 'kinuski', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Donitsi', 4.50, 2.50, 5, 'hasselpähkinä', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Salmiakki Donitsi', 4.50, 2.50, 5, 'salmiakki', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vanilja Donitsi', 4.50, 2.50, 5, 'vanilja', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vihreä kuula Donitsi', 4.50, 2.50, 5, 'vihreä kuula', 'vaniljakreemi', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Donitsi', 4.50, 2.50, 5, 'kahvi', 'vaniljakreemi', NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kinuski Donitsi', 4.50, 2.50, 5, 'kinuski', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Donitsi', 4.50, 2.50, 5, 'suklaa', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mansikka Donitsi', 4.50, 2.50, 5, 'mansikka', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tumma suklaa Donitsi', 4.50, 2.50, 5, 'tumma suklaa', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Valkosuklaa Donitsi', 4.50, 2.50, 5, 'valkosuklaa', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Lakritsi Donitsi', 4.50, 2.50, 5, 'kinuski', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Donitsi', 4.50, 2.50, 5, 'hasselpähkinä', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Salmiakki Donitsi', 4.50, 2.50, 5, 'salmiakki', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vanilja Donitsi', 4.50, 2.50, 5, 'vanilja', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vihreä kuula Donitsi', 4.50, 2.50, 5, 'vihreä kuula', 'vadelmahillo', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Donitsi', 4.50, 2.50, 5, 'kahvi', 'vadelmahillo', NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kinuski Donitsi', 4.50, 2.50, 5, 'kinuski', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Donitsi', 4.50, 2.50, 5, 'suklaa', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Mansikka Donitsi', 4.50, 2.50, 5, 'mansikka', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Tumma suklaa Donitsi', 4.50, 2.50, 5, 'tumma suklaa', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Valkosuklaa Donitsi', 4.50, 2.50, 5, 'valkosuklaa', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Lakritsi Donitsi', 4.50, 2.50, 5, 'kinuski', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Donitsi', 4.50, 2.50, 5, 'hasselpähkinä', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Salmiakki Donitsi', 4.50, 2.50, 5, 'salmiakki', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vanilja Donitsi', 4.50, 2.50, 5, 'vanilja', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Vihreä kuula Donitsi', 4.50, 2.50, 5, 'vihreä kuula', 'vihreä kuula', NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Donitsi', 4.50, 2.50, 5, 'kahvi', 'vihreä kuula', NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Perinteinen Setti', 12.50, 5, 4, NULL, NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Erikoinen Setti', 12.50, 5, 4, NULL, NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Makuöveri Setti', 12.50, 5, 4, NULL, NULL, NULL);

INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Munkki', 3, 1, 6, NULL, NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Suklaa Keksi', 2, 0.50, 6, 'suklaa', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Hasselpähkinä Keksi', 2, 0.50, 6, 'hasselpähkinä', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Kahvi Keksi', 2, 0.50, 6, 'kahvi', NULL, NULL);
INSERT INTO tuote(tuotenimi,hinta,kustannus,trnro,maku,taytemaku,kuva) VALUES ('Rinkeli', 2.50, 1, 6, NULL, NULL, NULL);



INSERT INTO setti VALUES ('Perinteinen Setti', 64, 10, 21, 46);
INSERT INTO setti VALUES ('Rrikoinen Setti', 65, 18, 26, 62);
INSERT INTO setti VALUES ('Makuöveri Setti', 66, 17, 27, 35);

/* Kuvien Lisäys */

UPDATE tuote
SET kuva = "munkki.png"
WHERE tuotenimi = "Munkki";

UPDATE tuote
SET kuva = "pikkuKinuski.png"
WHERE tuotenimi = "Kinuski Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuSuklaa.png"
WHERE tuotenimi = "Suklaa Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuMansikka.png"
WHERE tuotenimi = "Mansikka Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuTummasuklaa.png"
WHERE tuotenimi = "Tumma suklaa Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuValkosuklaa.png"
WHERE tuotenimi = "Valkosuklaa Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuLakritsi.png"
WHERE tuotenimi = "Lakritsi Pikkudonitsi";
-- korjataan väärä maku
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "Lakritsi Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuHasselpahkina.png"
WHERE tuotenimi = "Hasselpähkinä Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuSalmiakki.png"
WHERE tuotenimi = "Salmiakki Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuVanilja.png"
WHERE tuotenimi = "Vanilja Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuVihreakuula.png"
WHERE tuotenimi = "Vihreä kuula Pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuKahvi.png"
WHERE tuotenimi = "Kahvi Pikkudonitsi";

UPDATE tuote
SET kuva = "juomaKahviTumma.png"
WHERE tuotenimi = "Kahvi" AND maku = "tumma";

UPDATE tuote
SET kuva = "juomaKahviVaalea.png"
WHERE tuotenimi = "Kahvi" AND maku = "vaalea";

UPDATE tuote
SET kuva = "kinuskiDonitsi.png"
WHERE tuotenimi = "Kinuski Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "suklaaDonitsi.png"
WHERE tuotenimi = "Suklaa Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "mansikkaDonitsi.png"
WHERE tuotenimi = "Mansikka Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "tummasuklaaDonitsi.png"
WHERE tuotenimi = "Tumma suklaa Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "valkosuklaaDonitsi.png"
WHERE tuotenimi = "Valkosuklaa Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "lakritsiDonitsi.png"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku IS NULL;
-- korjataan maku
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "hasselpahkinaDonitsi.png"
WHERE tuotenimi = "Hasselpähkinä Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "salmiakkiDonitsi.png"
WHERE tuotenimi = "Salmiakki Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "vaniljaDonitsi.png"
WHERE tuotenimi = "Vanilja Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "vihreakuulaDonitsi.png"
WHERE tuotenimi = "Vihreä kuula Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "kahviDonitsi.png"
WHERE tuotenimi = "Kahvi Donitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "kinuskiVanilja.png"
WHERE tuotenimi = "Kinuski Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "suklaaVanilja.png"
WHERE tuotenimi = "Suklaa Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "mansikkaVanilja.png"
WHERE tuotenimi = "Mansikka Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "tummasuklaaVanilja.png"
WHERE tuotenimi = "Tumma suklaa Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "valkosuklaaVanilja.png"
WHERE tuotenimi = "Valkosuklaa Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "lakritsiVanilja.png"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vaniljakreemi";
-- korjaus
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "hasselpahkinaVanilja.png"
WHERE tuotenimi = "Hasselpähkinä Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "salmiakkiVanilja.png"
WHERE tuotenimi = "Salmiakki Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "vaniljaVanilja.png"
WHERE tuotenimi = "Vanilja Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "vihreakuulaVanilja.png"
WHERE tuotenimi = "Vihreä kuula Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "kahviVanilja.png"
WHERE tuotenimi = "Kahvi Donitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "kinuskiVadelma.png"
WHERE tuotenimi = "Kinuski Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "suklaaVadelma.png"
WHERE tuotenimi = "Suklaa Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "mansikkaVadelma.png"
WHERE tuotenimi = "Mansikka Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "tummasuklaaVadelma.png"
WHERE tuotenimi = "Tumma suklaa Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "valkosuklaaVadelma.png"
WHERE tuotenimi = "Valkosuklaa Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "lakritsiVadelma.png"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vadelmahillo";
-- korjataan
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "hasselpahkinaVadelma.png"
WHERE tuotenimi = "Hasselpähkinä Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "salmiakkiVadelma.png"
WHERE tuotenimi = "Salmiakki Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "vaniljaVadelma.png"
WHERE tuotenimi = "Vanilja Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "vihreakuulaVadelma.png"
WHERE tuotenimi = "Vihreä kuula Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "kahviVadelma.png"
WHERE tuotenimi = "Kahvi Donitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "kinuskiVihrea.png"
WHERE tuotenimi = "Kinuski Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "suklaaVihrea.png"
WHERE tuotenimi = "Suklaa Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "mansikkaVihrea.png"
WHERE tuotenimi = "Mansikka Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "tummasuklaaVihrea.png"
WHERE tuotenimi = "Tumma suklaa Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "valkosuklaaVihrea.png"
WHERE tuotenimi = "Valkosuklaa Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "lakritsiVihrea.png"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vihreä kuula";
-- korjataan
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "Lakritsi Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "hasselpahkinaVihrea.png"
WHERE tuotenimi = "Hasselpähkinä Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "salmiakkiVihrea.png"
WHERE tuotenimi = "Salmiakki Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "vaniljaVihrea.png"
WHERE tuotenimi = "Vanilja Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "vihreakuulaVihrea.png"
WHERE tuotenimi = "Vihreä kuula Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "kahviVihrea.png"
WHERE tuotenimi = "Kahvi Donitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "setti.png"
WHERE trnro = 4;

UPDATE tuote
SET kuva = "rinkeli.png"
WHERE tuotenimi = "Rinkeli";

UPDATE tuote
SET kuva = "keksiSuklaa.png"
WHERE tuotenimi = "Suklaa Keksi";

UPDATE tuote
SET kuva = "keksiHasselpahkina.png"
WHERE tuotenimi = "Hasselpähkinä Keksi";

UPDATE tuote
SET kuva = "keksiKahvi.png"
WHERE tuotenimi = "Kahvi Keksi";

UPDATE tuote
SET kuva = "juomaTee.png"
WHERE tuotenimi = "Tee";

UPDATE tuote
SET kuva = "juomaKola.png"
WHERE tuotenimi = "Pepsi" AND maku = "pepsi";

UPDATE tuote
SET kuva = "juomaJaffa.png"
WHERE tuotenimi = "Jaffa" AND maku = "jaffa";

UPDATE tuote
SET kuva = "juomaMansikka.png"
WHERE tuotenimi = "Mehu Mansikka" AND maku = "mansikka";

UPDATE tuote
SET kuva = "juomaPaaryna.png"
WHERE tuotenimi = "Mehu Päärynä" AND maku = "päärynä";

UPDATE tuote
SET kuva = "juomaVesi.png"
WHERE tuotenimi = "Vesi";

/* Järjestysnro */

ALTER TABLE tuoteryhma ADD jarjestusNro INT;


UPDATE tuoteryhma set jarjestusNro = 1 WHERE trnro = 3;
UPDATE tuoteryhma set jarjestusNro = 2 WHERE trnro = 2;
UPDATE tuoteryhma set jarjestusNro = 3 WHERE trnro = 5;
UPDATE tuoteryhma set jarjestusNro = 4 WHERE trnro = 4;
UPDATE tuoteryhma set jarjestusNro = 5 WHERE trnro = 6;
UPDATE tuoteryhma set jarjestusNro = 6 WHERE trnro = 1
