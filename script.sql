CREATE TABLE Produs(
	MODEL INTEGER(8) NOT NULL, 
	FABRICANT VARCHAR(255) NOT NULL,
	CATEGORIE VARCHAR(15) NOT NULL,
	PRET DOUBLE(8,2) NOT NULL,
	MONEDA VARCHAR(100), 
        CONSTRAINT PK_Produs PRIMARY KEY (MODEL), 
        CONSTRAINT CK_Categorie CHECK (CATEGORIE IN ('PC', 'LAPTOP', 'IMPRIMANTA')));


CREATE TABLE PC(
	MODEL INTEGER(8) NOT NULL,
	VITEZA DOUBLE(4,2) NOT NULL,
	RAM INTEGER(2) NOT NULL,
	HD INTEGER(4) NOT NULL, 
        CONSTRAINT PK_PC PRIMARY KEY (MODEL), 
        CONSTRAINT FK_PC FOREIGN KEY (MODEL) REFERENCES Produs (MODEL) ON DELETE CASCADE, 
        CONSTRAINT CK_PC_Viteza_HD CHECK ((VITEZA > 1.8 AND HD > 500) OR VITEZA <= 1.8));

CREATE TABLE Laptop(
	MODEL INTEGER(8) NOT NULL,
	VITEZA DOUBLE(4,2) NOT NULL,
	RAM INTEGER(2) NOT NULL,
	HD INTEGER(4) NOT NULL,
	ECRAN INTEGER(2), 
        CONSTRAINT PK_Laptop PRIMARY KEY (MODEL), 
        CONSTRAINT FK_Laptop FOREIGN KEY (MODEL) REFERENCES Produs (MODEL) ON DELETE CASCADE, 
        CONSTRAINT CK_Laptop_Ecran CHECK (ECRAN >= 12 AND ECRAN <= 19));

CREATE TABLE Imprimanta(
	MODEL INTEGER(8) NOT NULL, 
	CULOARE CHAR NOT NULL,
	TIP VARCHAR(10) NOT NULL, 
        CONSTRAINT PK_Imprimanta PRIMARY KEY (MODEL), 
        CONSTRAINT FK_Imprimanta FOREIGN KEY (MODEL) REFERENCES Produs (MODEL) ON DELETE CASCADE, 
        CONSTRAINT CK_Culoare CHECK(CULOARE IN ('D', 'N')), 
        CONSTRAINT CK_Tip CHECK(TIP IN ('ace', 'jet', 'laser')));


ALTER TABLE Produs DROP COLUMN MONEDA;

INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (110, 'HP', 'PC', 3900);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (111, 'ASUS', 'PC', 2250);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (112, 'DELL', 'PC', 3750);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (113, 'HP', 'PC', 2550);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (114, 'LENOVO', 'PC', 3500);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (115, 'HP', 'PC', 1820);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (116, 'DELL', 'PC', 4200);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (117, 'ACER', 'PC', 2499);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (118, 'ASUS', 'PC', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (119, 'DELL', 'PC', 2250);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (120, 'ACER', 'PC', 3600);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (121, 'LENOVO', 'PC', 2000);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (122, 'LENOVO', 'PC', 2250);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (123, 'HP', 'PC', 4000);

INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1224, 'HP', 'LAPTOP', 3300);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1225, 'LENOVO', 'LAPTOP', 3000);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1226, 'DELL', 'LAPTOP', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1227, 'ASUS', 'LAPTOP', 3250);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1228, 'ACER', 'LAPTOP', 3150);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1229, 'HP', 'LAPTOP', 2960);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1230, 'LENOVO', 'LAPTOP', 3850);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1231, 'ASUS', 'LAPTOP', 3200);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1232, 'DELL', 'LAPTOP', 3160);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1233, 'HP', 'LAPTOP', 2100);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1235, 'HP', 'LAPTOP', 2750);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1236, 'ACER', 'LAPTOP', 3350);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (1237, 'ASUS', 'LAPTOP', 2400);

INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (142, 'HP', 'IMPRIMANTA', 650);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (143, 'CANON', 'IMPRIMANTA', 850);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (144, 'PANTUM', 'IMPRIMANTA', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (145, 'HP', 'IMPRIMANTA', 1120);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (146, 'CANON', 'IMPRIMANTA', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (147, 'PANTUM', 'IMPRIMANTA', 960);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (148, 'CANON', 'IMPRIMANTA', 850);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (149, 'HP', 'IMPRIMANTA', 899);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (150, 'HP', 'IMPRIMANTA', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (151, 'CANON', 'IMPRIMANTA', 826);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (152, 'PANTUM', 'IMPRIMANTA', 960);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (153, 'HP', 'IMPRIMANTA', 623);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (154, 'CANON', 'IMPRIMANTA', 1230);
INSERT INTO Produs (MODEL, FABRICANT, CATEGORIE, PRET) VALUES (155, 'LEXMARK', 'IMPRIMANTA', 750);




INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (110, 3.7, 8, 1500);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (111, 1.6, 4, 256);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (112, 3.5, 16, 1500);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (113, 1.6, 4, 500);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (114, 3.7, 16, 1000);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (115, 1.1, 4, 16);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (116, 3.9, 16, 2000);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (117, 1.8, 4, 500);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (118, 0.9, 4, 16);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (119, 1.7, 4, 500);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (120, 3.2, 8, 1000);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (121, 1.2, 4, 64);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (122, 1.5, 8, 256);
INSERT INTO PC (MODEL, VITEZA, RAM, HD) VALUES (123, 4.2, 16, 2000);



INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1224, 3.2, 16, 500, 16);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1225, 2.5, 8, 256, 14);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1226, 1.7, 4, 128, 12);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1227, 1.8, 4, 500, 14);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1228, 2.1, 8, 256, 16);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1229, 1.9, 8, 256, 13);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1230, 3.5, 16, 1000, 16);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1231, 2.5, 8, 500, 15);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1232, 2.8, 16, 1000, 18);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1233, 1.4, 4, 128, 12);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1235, 2.6, 8, 500, 16);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1236, 2.9, 16, 500, 18);
INSERT INTO Laptop (MODEL, VITEZA, RAM, HD, ECRAN) VALUES (1237, 2.1, 4, 256, 16);






INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (142, 'D', 'ace');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (143, 'N', 'jet');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (144, 'N', 'ace');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (145, 'N', 'laser');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (146, 'D', 'ace');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (147, 'D', 'jet');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (148, 'D', 'laser');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (149, 'N', 'laser');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (150, 'N', 'jet');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (151, 'N', 'ace');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (152, 'D', 'ace');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (153, 'D', 'jet');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (154, 'N', 'jet');
INSERT INTO Imprimanta (MODEL, CULOARE, TIP) VALUES (155, 'N', 'ace');
