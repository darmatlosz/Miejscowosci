﻿
CREATE TABLE powiat ( 
    id_powiatu    SERIAL  PRIMARY KEY,
    nazwa_powiatu VARCHAR( 255 ) 
);

INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (1, 'limanowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (2, 'nowosądecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (3, 'nowotarski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (4, 'opatowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (5, 'niżański');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (6, 'szydłowiecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (7, 'suski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (8, 'staszowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (9, 'kazimierski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (10, 'starachowicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (11, 'wadowicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (12, 'myślenicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (13, 'brzeski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (14, 'krakowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (15, 'olkuski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (16, 'wielicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (17, 'oświęcimski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (18, 'będziński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (19, 'leżajski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (20, 'łańcucki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (21, 'kolbuszowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (22, 'mielecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (23, 'tatrzański');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (24, 'wieluński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (25, 'oleski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (26, 'kłobucki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (27, 'cieszyński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (28, 'rzeszowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (29, 'krośnieński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (30, 'bieszczadzki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (31, 'przemyski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (32, 'sanocki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (33, 'tarnowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (34, 'gorlicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (35, 'żywiecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (36, 'tarnogórski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (37, 'bielski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (38, 'prudnicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (39, 'strzelecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (40, 'krapkowicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (41, 'raciborski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (42, 'lubliniecki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (43, 'opolski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (44, 'Zabrze');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (45, 'Bytom');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (46, 'Chorzów');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (47, 'bieruńsko-lędziński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (48, 'wodzisławski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (49, 'pszczyński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (50, 'Jastrzębie Zdrój');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (51, 'katowicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (52, 'Mysłowice');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (53, 'mikołowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (54, 'Piekary Śląskie');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (55, 'rybnicki');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (56, 'Ruda Śląska');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (57, 'ciechanowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (58, 'grajewski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (59, 'radzyński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (60, 'kartuski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (61, 'gostyński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (62, 'częstochowski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (63, 'zamojski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (64, 'bocheński');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (65, 'przeworski');
INSERT INTO powiat (id_powiatu, nazwa_powiatu) VALUES (66, 'biłgorajski');

SELECT setval('powiat_id_powiatu_seq', 66, true);

CREATE TABLE gmina ( 
    id_gminy    SERIAL         PRIMARY KEY,
    nazwa_gminy VARCHAR( 128 )  UNIQUE,
    id_powiatu  INTEGER 
);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (1, 'Niedźwiedź', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (2, 'Łososina Dolna', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (3, 'Ochotnica Dolna', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (4, 'Krościenko nad Dunajcem', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (5, 'Czorsztyn', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (6, 'Szczawnica', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (7, 'Baćkowice', 4);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (8, 'Ulanów', 5);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (9, 'Jastrząb', 6);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (10, 'Jordanów', 7);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (11, 'Staszów', 8);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (12, 'Kazimierza Wielka', 9);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (13, 'Starachowice', 10);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (14, 'Wadowice', 11);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (15, 'Sułkowice', 12);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (16, 'Brzesko', 13);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (17, 'Czernichów', 14);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (18, 'Wieprz', 11);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (19, 'Olkusz', 15);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (20, 'Kraków', 14);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (21, 'Wieliczka', 16);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (22, 'Oświęcim', 17);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (23, 'Zielonki', 14);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (24, 'Skawina', 14);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (25, 'Zator', 17);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (26, 'Siewierz', 18);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (27, 'Szczurowa', 13);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (28, 'Myślenice', 12);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (29, 'Wielka Wieś', 14);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (30, 'Wojkowice', 18);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (31, 'Grodzisko Dolne', 19);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (32, 'Czarna', 20);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (33, 'Raniżów', 21);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (34, 'Czermin', 22);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (35, 'Wadowice Górne', 22);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (36, 'Jabłonka', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (37, 'Raba Wyżna', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (38, 'Czarny Dunajec', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (39, 'Bukowina Tatrzańska', 23);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (40, 'Mszana Dolna', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (41, 'Nowy Targ', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (42, 'Biały Dunajec', 23);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (43, 'Maków Podhalański', 7);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (44, 'Kościelisko', 23);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (45, 'Poronin', 23);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (46, 'Rabka-Zdrój', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (47, 'Zawoja', 7);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (48, 'Szaflary', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (49, 'Zakopane', 23);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (50, 'Limanowa', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (51, 'Łąck', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (52, 'Grybów', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (53, 'Dobra', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (54, 'Słopnice', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (55, 'Stryszawa', 7);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (56, 'Kamienica', 1);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (57, 'Lubień', 12);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (58, 'Tokarnia', 12);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (59, 'Podegrodzie', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (60, 'Łapsze Niżne', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (61, 'Czarnożyły', 24);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (62, 'Praszka', 25);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (63, 'Popów', 26);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (64, 'Istebna', 27);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (65, 'Świlcza', 28);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (66, 'Stary Sącz', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (67, 'Łącko', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (68, 'Dukla', 29);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (69, 'Ustrzyki Dolne', 30);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (70, 'Stubno', 31);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (71, 'Krosno', 29);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (72, 'Fredropol', 31);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (73, 'Sanok', 32);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (74, 'Rymanów', 29);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (75, 'Gromnik', 33);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (76, 'Łużna', 34);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (77, 'Węgierska Górka', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (78, 'Jeleśnia', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (79, 'Radziechowy-Wieprz', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (80, 'Milówka', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (81, 'Lipowa', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (82, 'Koszarowa', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (83, 'Żywiec', 35);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (84, 'Pleśna', 36);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (85, 'Brenna', 27);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (86, 'Cieszyn', 27);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (87, 'Goleszów', 27);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (88, 'Czechowice-Dziedzice', 37);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (89, 'Wisła', 27);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (90, 'Biała', 38);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (91, 'Izbicko', 39);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (92, 'Zdzieszowice', 40);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (93, 'Racibórz', 41);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (94, 'Koszęcin', 42);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (95, 'Tarnów Opolski', 43);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (96, 'Zabrze', 44);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (97, 'Bytom', 45);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (98, 'Chorzów', 46);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (99, 'Chełm Śląski', 47);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (100, 'Godów', 48);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (101, 'Miedźna', 49);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (102, 'Jastrzębie Zdrój', 50);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (103, 'Katowice', 51);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (104, 'Kobiór', 49);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (105, 'Krzyżanowice', 41);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (106, 'Lubomia', 48);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (107, 'Mysłowice', 52);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (108, 'Orzesze', 53);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (109, 'Piekary Śląskie', 54);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (110, 'Rybnik', 55);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (111, 'Ruda Śląska', 56);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (112, 'Wodzisław Śląski', 48);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (113, 'Ciechanów', 57);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (114, 'Radziłów', 58);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (115, 'Kąbolewnica Wschodnia', 59);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (116, 'Sulęczyno', 60);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (117, 'Kartuzy', 60);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (118, 'Krobia', 61);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (119, 'Budzów', 7);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (120, 'Dąbrowa Zielona', 62);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (121, 'Zamość', 63);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (122, 'Leśnica', 39);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (123, 'Lędziny', 47);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (124, 'Piwniczna Zdrój', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (125, 'Korzenna', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (126, 'Moszczenica', 34);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (127, 'Żegocina', 64);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (128, 'Sieniawa', 65);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (129, 'Wiśniowa', 12);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (130, 'Kalwaria Zebrzydowska', 11);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (131, 'Krościenko Wyżne', 29);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (132, 'Kocudza', 66);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (133, 'Bobowa', 34);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (134, 'Kamionka Wielka', 2);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (135, 'Zakliczyn', 3);
INSERT INTO gmina (id_gminy, nazwa_gminy, id_powiatu) VALUES (136, 'Skrzyszów', 33);

SELECT setval('gmina_id_gminy_seq', 136, true);

CREATE TABLE miejscowosc ( 
    id_miejscowosci    SERIAL         PRIMARY KEY,
    nazwa_miejscowosci VARCHAR( 128 ),
    id_gminy           INTEGER 
);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (1, 'Podobin', 1);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (2, 'Wronowice', 2);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (3, 'Ochotnica Dolna', 3);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (4, 'Ochotnica Górna', 3);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (5, 'Poręba Wielka', 1);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (6, 'Hałuszowa', 4);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (7, 'Łapsze Wyżne', 5);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (8, 'Sromowce Niżne', 5);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (9, 'Szczawnica', 6);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (10, 'Tylmanowa', 3);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (11, 'Baćkowice', 7);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (12, 'Bieliny', 8);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (13, 'Gąsawy Rządowe', 9);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (14, 'Łętownia', 10);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (15, 'Wysoka', 10);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (16, 'Wiązownica Kolonia', 11);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (17, 'Zięblice', 12);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (18, 'Starachowice', 13);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (19, 'Barwałd Dolny', 14);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (20, 'Biertowice', 15);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (21, 'Bucze', 16);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (22, 'Dąbrowa Szlachecka', 17);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (23, 'Gierałtowice', 18);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (24, 'Kosmolów', 19);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (25, 'Kraków', 20);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (26, 'Mietniów', 21);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (27, 'Olkusz', 19);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (28, 'Oświęcim', 22);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (29, 'Przybysławice', 23);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (30, 'Rybna', 17);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (31, 'Radziszów', 24);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (32, 'Smolice', 25);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (33, 'Siewierz', 26);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (34, 'Strzelce Wielkie', 27);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (35, 'Trzemeśnia', 28);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (36, 'Wierzchowie', 29);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (37, 'Wojkowice', 30);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (38, 'Grodzisko Dolne', 31);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (39, 'Pogwizdów', 32);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (40, 'Raniżów', 33);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (41, 'Trzciana', 34);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (42, 'Wampierzów', 35);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (43, 'Jabłonka', 36);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (44, 'Podsarnie', 37);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (45, 'Piekielnik', 38);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (46, 'Czarna Góra', 39);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (47, 'Mszana Dolna', 40);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (48, 'Szlembark', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (49, 'Bukowina Osiedle', 37);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (50, 'Białka Tatrzańska', 39);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (51, 'Ciche', 38);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (52, 'Czarny Dunajec', 38);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (53, 'Biały Dunajec', 42);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (54, 'Groń', 39);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (55, 'Juszczyn', 43);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (56, 'Kościelisko', 44);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (57, 'Klikuszowa', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (58, 'Ludźmierz', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (59, 'Małe Ciche', 45);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (60, 'Nowy Targ', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (61, 'Raba Wyżna', 37);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (62, 'Rabka-Zdrój', 46);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (63, 'Skawica', 47);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (64, 'Szaflary', 48);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (65, 'Waksmund', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (66, 'Zakopane', 49);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (67, 'Zawoja', 47);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (68, 'Ząb', 45);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (69, 'Bałażówka', 50);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (70, 'Kicznia', 51);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (71, 'Kasina Wielka', 40);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (72, 'Krużlowa Wyżna', 52);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (73, 'Białka', 43);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (74, 'Półrzeczki', 53);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (75, 'Słopnice', 54);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (76, 'Stryszawa', 55);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (77, 'Szczawa', 56);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (78, 'Tenczyn', 57);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (79, 'Tokarnia', 58);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (80, 'Zbludza', 56);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (81, 'Rogi', 59);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (82, 'Bańska Niżna', 48);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (83, 'Falsztyn', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (84, 'Frydman', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (85, 'Lipnica Mała', 36);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (86, 'Jurgów', 39);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (87, 'Kacwin', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (88, 'Krempachy', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (89, 'Łapszanka', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (90, 'Niedzica', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (91, 'Nowa Biała', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (92, 'Rzepiska', 39);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (93, 'Trybsz', 60);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (94, 'Limanowa', 50);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (95, 'Raczyn', 61);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (96, 'Skotnica', 62);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (97, 'Wąsosz Górny', 63);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (98, 'Bratkowice', 65);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (99, 'Barcice', 66);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (100, 'Cieniawa', 52);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (101, 'Czarny Potok', 67);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (102, 'Dąbrowa', 65);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (103, 'Iwla', 68);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (104, 'Krościenko', 69);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (105, 'Kalników', 70);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (106, 'Krosno', 71);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (107, 'Makowa', 72);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (108, 'Maszkowice', 67);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (109, 'Pisarowce', 73);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (110, 'Podegrodzie', 59);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (111, 'Posada Górna', 74);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (112, 'Rymanów Zdrój', 74);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (113, 'Brzozowa', 75);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (114, 'Szalowa', 76);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (115, 'Cięcina', 77);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (116, 'Jeleśnia', 78);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (117, 'Juszczyna', 79);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (118, 'Kamesznica', 80);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (119, 'Kamesznica', 80);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (120, 'Ostre', 81);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (121, 'Przyborów', 82);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (122, 'Pewelka', 55);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (123, 'Żywiec', 83);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (124, 'Szczepanowice', 84);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (125, 'Brenna', 85);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (126, 'Cieszyn', 86);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (127, 'Cisownica', 87);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (128, 'Czechowice-Dziedzice', 88);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (129, 'Wisła', 89);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (130, 'Biała (Prudnicka)', 90);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (131, 'Krośnica', 91);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (132, 'Rozwadza', 92);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (133, 'Racibórz', 93);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (134, 'Sadów', 94);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (135, 'Tarnów Opolski', 95);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (136, 'Zabrze', 96);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (137, 'Bytom', 97);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (138, 'Chorzów', 98);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (139, 'Chełm Śląski', 99);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (140, 'Godów', 100);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (141, 'Góra', 101);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (142, 'Jastrzębie Zdrój', 102);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (143, 'Katowice', 103);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (144, 'Katowice', 103);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (145, 'Kobiór', 104);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (146, 'Krzyżanowice', 105);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (147, 'Lubomia', 106);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (148, 'Mysłowice', 107);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (149, 'Orzesze', 108);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (150, 'Piekary Śląskie', 109);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (151, 'Rybnik', 110);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (152, 'Ruda Śląska', 111);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (153, 'Wodzisław Śląski', 112);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (154, 'Ciechanów', 113);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (155, 'Słucz', 114);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (156, 'Zosinowo', 115);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (157, 'Sucha', 116);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (158, 'Sianowo', 117);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (159, 'Sułkowice', 118);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (160, 'Budzów', 119);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (161, 'Dąbrowa Zielona', 120);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (162, 'Kalinowice', 121);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (163, 'Leśnica', 122);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (164, 'Lędziny', 123);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (165, 'Łomnica Zdrój', 124);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (166, 'Łyczana', 125);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (167, 'Moszczenica', 126);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (168, 'Osielec', 10);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (169, 'Pasierbiec', 50);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (170, 'Rozdziele', 127);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (171, 'Sieniawa', 128);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (172, 'Toporzysko', 10);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (173, 'Wiśniowa', 129);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (174, 'Zebrzydowice', 130);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (175, 'Krościenko Wyżne', 131);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (176, 'Kocudza', 132);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (177, 'Sędziszowa', 133);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (178, 'Kamionka Wielka', 134);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (179, 'Maków Podhalański', 43);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (180, 'Gronków', 41);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (181, 'Paleśnica', 135);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (182, 'Pogórska Wola', 136);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (183, 'Stróże', 52);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (184, 'Gwoździec', 135);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (185, 'Jamna', 135);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (186, 'Jastrzębia', 135);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (187, 'Faściszowa', 135);
INSERT INTO miejscowosc (id_miejscowosci, nazwa_miejscowosci, id_gminy) VALUES (188, 'Krościenko n/Dunajcem', 4);

SELECT setval('miejscowosc_id_miejscowosci_seq', 188, true);
