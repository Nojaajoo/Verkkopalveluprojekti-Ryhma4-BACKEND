UPDATE tuote
SET kuva = "munkki.png"
WHERE tuotenimi = "munkki";

UPDATE tuote
SET kuva = "pikkuKinuski.png"
WHERE tuotenimi = "kinuski_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuSuklaa.png"
WHERE tuotenimi = "suklaa_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuMansikka.png"
WHERE tuotenimi = "mansikka_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuTummasuklaa.png"
WHERE tuotenimi = "tummaSuklaa_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuValkosuklaa.png"
WHERE tuotenimi = "valkosuklaa_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuLakritsi.png"
WHERE tuotenimi = "lakritsi_pikkudonitsi";
-- korjataan väärä maku
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "lakritsi_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuHasselpahkina.png"
WHERE tuotenimi = "hasselpähkinä_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuSalmiakki.png"
WHERE tuotenimi = "salmiakki_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuVanilja.png"
WHERE tuotenimi = "vanilja_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuVihreakuula.png"
WHERE tuotenimi = "vihreäKuula_pikkudonitsi";

UPDATE tuote
SET kuva = "pikkuKahvi.png"
WHERE tuotenimi = "kahvi_pikkudonitsi";

UPDATE tuote
SET kuva = "juomaKahviTumma.png"
WHERE tuotenimi = "kahvi" AND maku = "tumma";

UPDATE tuote
SET kuva = "juomaKahviVaalea.png"
WHERE tuotenimi = "kahvi" AND maku = "vaalea";

UPDATE tuote
SET kuva = "kinuskiDonitsi.png"
WHERE tuotenimi = "kinuskidonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "suklaaDonitsi.png"
WHERE tuotenimi = "suklaadonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "mansikkaDonitsi.png"
WHERE tuotenimi = "mansikkadonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "tummasuklaaDonitsi.png"
WHERE tuotenimi = "tummaSuklaadonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "valkosuklaaDonitsi.png"
WHERE tuotenimi = "valkosuklaadonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "lakritsiDonitsi.png"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku IS NULL;
-- korjataan maku
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "hasselpahkinaDonitsi.png"
WHERE tuotenimi = "hasselpähkinädonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "salmiakkiDonitsi.png"
WHERE tuotenimi = "salmiakkidonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "vaniljaDonitsi.png"
WHERE tuotenimi = "vaniljadonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "vihreakuulaDonitsi.png"
WHERE tuotenimi = "vihreäKuuladonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "kahviDonitsi.png"
WHERE tuotenimi = "kahvidonitsi" AND taytemaku IS NULL;

UPDATE tuote
SET kuva = "kinuskiVanilja.png"
WHERE tuotenimi = "kinuskidonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "suklaaVanilja.png"
WHERE tuotenimi = "suklaadonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "mansikkaVanilja.png"
WHERE tuotenimi = "mansikkadonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "tummasuklaaVanilja.png"
WHERE tuotenimi = "tummaSuklaadonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "valkosuklaaVanilja.png"
WHERE tuotenimi = "valkosuklaadonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "lakritsiVanilja.png"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vaniljakreemi";
-- korjaus
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "hasselpahkinaVanilja.png"
WHERE tuotenimi = "hasselpähkinädonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "salmiakkiVanilja.png"
WHERE tuotenimi = "salmiakkidonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "vaniljaVanilja.png"
WHERE tuotenimi = "vaniljadonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "vihreakuulaVanilja.png"
WHERE tuotenimi = "vihreäKuuladonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = " kahviVanilja.png"
WHERE tuotenimi = "kahvidonitsi" AND taytemaku = "vaniljakreemi";

UPDATE tuote
SET kuva = "kinuskiVadelma.png"
WHERE tuotenimi = "kinuskidonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "suklaaVadelma.png"
WHERE tuotenimi = "suklaadonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "mansikkaVadelma.png"
WHERE tuotenimi = "mansikkadonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "tummasuklaaVadelma.png"
WHERE tuotenimi = "tummaSuklaadonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "valkosuklaaVadelma.png"
WHERE tuotenimi = "valkosuklaadonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "lakritsiVadelma.png"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vadelmahillo";
-- korjataan
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "hasselpahkinaVadelma.png"
WHERE tuotenimi = "hasselpähkinädonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "salmiakkiVadelma.png"
WHERE tuotenimi = "salmiakkidonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "vaniljaVadelma.png"
WHERE tuotenimi = "vaniljadonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "vihreakuulaVadelma.png"
WHERE tuotenimi = "vihreäKuuladonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "kahviVadelma.png"
WHERE tuotenimi = "kahvidonitsi" AND taytemaku = "vadelmahillo";

UPDATE tuote
SET kuva = "kinuskiVihrea.png"
WHERE tuotenimi = "kinuskidonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "suklaaVihrea.png"
WHERE tuotenimi = "suklaadonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "mansikkaVihrea.png"
WHERE tuotenimi = "mansikkadonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "tummasuklaaVihrea.png"
WHERE tuotenimi = "tummaSuklaadonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "valkosuklaaVihrea.png"
WHERE tuotenimi = "valkosuklaadonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "lakritsiVihrea.png"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vihreä kuula";
-- korjataan
UPDATE tuote
SET maku = "lakritsi"
WHERE tuotenimi = "lakritsidonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "hasselpahkinaVihrea.png"
WHERE tuotenimi = "hasselpähkinädonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "salmiakkiVihrea.png"
WHERE tuotenimi = "salmiakkidonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "vaniljaVihrea.png"
WHERE tuotenimi = "vaniljadonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "vihreakuulaVihrea.png"
WHERE tuotenimi = "vihreäKuuladonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "kahviVihrea.png"
WHERE tuotenimi = "kahvidonitsi" AND taytemaku = "vihreä kuula";

UPDATE tuote
SET kuva = "setti.png"
WHERE trnro = 4;

UPDATE tuote
SET kuva = "rinkeli.png"
WHERE tuotenimi = "rinkeli";

UPDATE tuote
SET kuva = "keksiSuklaa.png"
WHERE tuotenimi = "suklaakeksi";

UPDATE tuote
SET kuva = "keksiHasselpahkina.png"
WHERE tuotenimi = "hasselpähkinäkeksi";

UPDATE tuote
SET kuva = "keksiKahvi.png"
WHERE tuotenimi = "kahvikeksi";