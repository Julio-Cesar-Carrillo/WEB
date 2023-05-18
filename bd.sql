drop DATABASE DB_PROJECTE;

CREATE DATABASE `DB_PROJECTE`;

USE `DB_PROJECTE`;

CREATE TABLE `PROFESSOR` (
    dni_profe CHAR(9) NOT NULL PRIMARY KEY,
    nom_profe VARCHAR(10) NOT NULL,
    cognom1_profe VARCHAR(10) NOT NULL,
    cognom2_profe VARCHAR(10) NULL,
    email_prof VARCHAR(50) NOT NULL,
    telf_prof CHAR(9) NOT NULL,
    sal_prof decimal(5) NOT NULL,
    dept_prof int(3) NOT NULL
);

CREATE TABLE `CLASSE`(
    id_classe INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    codi_classe CHAR(3) NOT NULL,
    nom_classe VARCHAR(20) NOT NULL,
    tutor char(9) NOT NULL
);

CREATE TABLE `ALUMNE`(
    num_matric INT(3) NOT NULL PRIMARY KEY,
    nom_alu VARCHAR(10) NOT NULL,
    cognom1_alu VARCHAR(30) NOT NULL,
    cognom2_alu VARCHAR(30) NOt NULL,
    email_alu VARCHAR(50) NOT NULL,
    dni_alu CHAR(9) NOT NULL,
    telf_alu CHAR(9) NOT NULL,
    fecha_matric_alu date NOT NULL,
    classe int(3) NOT NULL
);

CREATE TABLE `DEPARTAMENT`(
    id_dep INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    codi_dept CHAR(3) NOT NULL,
    nom_dept VARCHAR(30)
);

CREATE TABLE `ADMINISTRADORES`(
    dni_ad CHAR(9) NOT NULL PRIMARY KEY,
    nom_ad VARCHAR(10) NOT NULL,
    email_ad VARCHAR(50) NOT NULL,
    pass_ad VARCHAR(10) NOT NULL
);

ALTER TABLE PROFESSOR
ADD CONSTRAINT profe_id_dep FOREIGN KEY (dept_prof)
REFERENCES DEPARTAMENT (id_dep);

ALTER TABLE CLASSE
ADD CONSTRAINT alu_dni_prof FOREIGN KEY (tutor)
REFERENCES PROFESSOR (dni_profe);

ALTER TABLE ALUMNE
ADD CONSTRAINT alu_id_class FOREIGN KEY (classe)
REFERENCES CLASSE (id_classe);

INSERT INTO DEPARTAMENT VALUE(NULL,"102","Informatica");
INSERT INTO DEPARTAMENT VALUE(NULL,"201","deportes");
INSERT INTO DEPARTAMENT VALUE(NULL,"010","Humanidades");
INSERT INTO DEPARTAMENT VALUE(NULL,"015","Ciencias");
INSERT INTO DEPARTAMENT VALUE(NULL,"025","Artes");

INSERT INTO PROFESSOR VALUE("03619853K","Gerard","Orobitg","Boyer","gorobitg@fje.edu","600550167",1000,1);
INSERT INTO PROFESSOR VALUE("59810845N","Nuria","Garres","Gonzales","gnuria@fje.edu","649218387",1000,1);
INSERT INTO PROFESSOR VALUE("79225888L","Agnes","Plans","Berenguer","aplans@fje.edu","675274171",1000,1);
INSERT INTO PROFESSOR VALUE("24585946G","Sergio","Jimenez","Garcia","sjimenez@fje.edu","611552414",1000,1);
INSERT INTO PROFESSOR VALUE("81748298L","Ignasi","Romero","Sanjuan","iromero@fje.edu","684204692",1000,1);
INSERT INTO PROFESSOR VALUE("98067578V","Miguel","Delgado","Caballero","mdelgado@fje.edu","637423352",1000,2);
INSERT INTO PROFESSOR VALUE("19796391S","Laura","Redondo","Ruiz","lredondo@fje.edu","639223832",1000,2);
INSERT INTO PROFESSOR VALUE("31077895L","Pedro","Blanco","Andres","pblanco@fje.edu","634770284",1000,1);
INSERT INTO PROFESSOR VALUE("52485173R","Lluc","Rodriguez","Sanches","lrodriguez@fje.edu","665873994",1000,1);
INSERT INTO PROFESSOR VALUE("94128241M","Magda","Retamal","Costa","mretamal@fje.edu","654793598",1000,1);
INSERT INTO PROFESSOR VALUE("71504175G","Sergi","Font","Reyes","sfont@fje.edu","687972131",1000,2);
INSERT INTO PROFESSOR VALUE("45925350P","Fonxo","Tomas","Maldonado","ftomas@fje.edu","695682875",1000,2);
INSERT INTO PROFESSOR VALUE("75605214M","Anselmo","Torres","Villalba","atorres@fje.edu","710082508",1000,2);
INSERT INTO PROFESSOR VALUE("60695187G","Eustaquio","Mateu","Climent","emateu@fje.edu","676043465",1000,1);
INSERT INTO PROFESSOR VALUE("88936915D","Ramon","Colom","Pinilla","rcolom@fje.edu","608 873872",1000,3);
INSERT INTO PROFESSOR VALUE("63642258Q","Robledo","Roble","Aviles","rroble@fje.edu","628443504",1000,3);
INSERT INTO PROFESSOR VALUE("54437648Y","Xavi","Soler","Ubeda","xsoler@fje.edu","661331831",1000,4);
INSERT INTO PROFESSOR VALUE("41499392D","Alba","Brunet","Bosch","abrunet@fje.edu","678595996",1000,4);
INSERT INTO PROFESSOR VALUE("86920828X","Claudia","Sadurni","Roldan","csadurni@fje.edu","627710614",1000,5);
INSERT INTO PROFESSOR VALUE("02497001Y","Roger","Vidal","Torralba","rvidal@fje.edu","691508318",1000,5);

INSERT INTO CLASSE VALUE(NULL,"101","SMX1","31077895L");
INSERT INTO CLASSE VALUE(NULL,"101","SMX2","52485173R");
INSERT INTO CLASSE VALUE(NULL,"103","ASIX1","03619853K");
INSERT INTO CLASSE VALUE(NULL,"101","ASIX2","59810845N");
INSERT INTO CLASSE VALUE(NULL,"101","DAW2","24585946G");

INSERT INTO ALUMNE VALUE(1,"julio","carrillo","rocha","julio@fje.edu","80601839H","942891818", CURDATE(),1);
INSERT INTO ALUMNE VALUE(2,"Ainoa","Prados","Valcarcel","ainoa@fje.edu","18176076G","680527969", CURDATE(),1);
INSERT INTO ALUMNE VALUE(3,"Paulino ","Espin","García","paulino@fje.edu","99709398M","653086012",CURDATE(),1);
INSERT INTO ALUMNE VALUE(4,"Nancy","Luengo","Pacheco","nancy@fje.edu","56400532R","726446795",CURDATE(),1);
INSERT INTO ALUMNE VALUE(5,"Piedad","Ariza","Becerra","piedad@fje.edu","18619881R","646163728",CURDATE(),1);
INSERT INTO ALUMNE VALUE(6,"Anastasia","Alcazar","Galvez","anastasia@fje.edu","97946886Y","659280801",CURDATE(),1);
INSERT INTO ALUMNE VALUE(7,"Maite","Arroyo","Ortiz","maite@fje.edu","50629024K","626255504",CURDATE(),1);
INSERT INTO ALUMNE VALUE(8,"Diego","Pérez","Paz","diego@fje.edu","26849614N","660547746",CURDATE(),1);
INSERT INTO ALUMNE VALUE(9,"Adan","Calle","Ortuño","adan@fje.edu","78679374P","705771394",CURDATE(),1);
INSERT INTO ALUMNE VALUE(10,"Nuria","Fuentes","Ubeda","nuria@fje.edu","08796926R","604713149",CURDATE(),1);
INSERT INTO ALUMNE VALUE(11,"Tomas","Morera","Martinez","tomas@fje.edu","76403881C","690180428",CURDATE(),1);
INSERT INTO ALUMNE VALUE(12,"Elias","Recio","Fernández","elias@fje.edu","11367144S","696947094",CURDATE(),1);

INSERT INTO ADMINISTRADORES VALUE("03619853K","Gerard","gorobitg@fje.edu","qweQWE123");