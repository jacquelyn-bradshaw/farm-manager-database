USE farmManager;

INSERT INTO
farmer (farmerID, firstName, lastName, street, city, postCode, salary)
VALUES
("F1", "George", "Banks", "5 Church Street", "Buxton", "SK17 6HD", 8000),
("F2", "Lucy", "Banks", "5 Church Street", "Buxton", "SK17 6HD", 6000),
("F3", "Tom", "Banks", "Coltcroft farm", "Buxton", "SK17 9RP", 7000),
("F4", "Fred", "Thompson", "12 Cumberland Close", "Buxton", "SK17 9PQ", 7000),
("F5", "Sam", "Smith", "2 Burbage Way", "Buxton", "SK17 9GB", 6000),
("F6", "Archie", "Shaw", "3 Milldale Avenue", "Buxton", "SK17 9BE", 5000),
("F7", "Leo", "Franks", "10 Green Lane", "Buxton", "SK17 9DP", 6000),
("F8", "Evie", "Franks", "10 Green Lane", "Buxton", "SK17 9DP", 7000);

INSERT INTO
tractor (tractorID, make, model, age, registrationPlate, power)
VALUES
("T1", "New Holland", "T5.120", 2, "MN71 7GH", "117 HP"),
("T2", "Massey Ferguson", "6480", 19, "CU04 MHA", "150 HP"),
("T3", "Claas", "Arion 610 C", 11, "MN12 6GJ", "110 HP"),
("T4", "Fendt", "720 Vario", 4, "MN19 7GH", "185 HP"),
("T5", "Fendt", "724 Vario", 1, "MD23 9GH", "220 HP"),
("T6", "Fendt", "828 Vario", 3, "MD20 8GJ", "260 HP"),
("T7", "Claas", "Axion 840", 11, "MH12 4DG", "250 HP"),
("T8", "Class", "Arion 420", 4, "MD19 7FH", "105 HP");

INSERT INTO
farmerTractorRelation (farmerID, tractorID)
VALUES
("F1", "T1"),
("F1", "T2"),
("F1", "T3"),
("F1", "T5"),
("F1", "T7"),
("F2", "T3"),
("F2", "T5"),
("F3", "T4"),
("F3", "T5"),
("F4", "T2"),
("F6", "T7"),
("F7", "T6"),
("F7", "T8"),
("F8", "T6"),
("F8", "T8");

INSERT INTO
field (fieldID, name, size, location, cropID)
VALUES
("FD1", "The Ryegrass", 12, "53.2591°N, 1.9148°W", "C1"),
("FD2", "Long Meadow", 10, "53.2581°N, 1.9155°W", "C3"),
("FD3", "Fair Green", 7, "53.2567°N, 1.9160°W", "C2"),
("FD4", "Combines Field", 15, "53.2598°N, 1.9142°W", "C2"),
("FD5", "Tansy Hill", 12, "53.2595°N, 1.9145°W", "C1"),
("FD6", "Crab Tree", 10, "53.2584°N, 1.9134°W", "C3"),
("FD7", "Barrow Field", 15, "53.2576°N, 1.9127°W", "C2"),
("FD8", "Grape Tree", 13, "53.2578°N, 1.9123°W", "C4"),
("FD9", "Red Field", 11, "53.2579°N, 1.9127°W", "C4"),
("FD10", "Broad Field", 13, "53.2574°N, 1.9121°W", "C4");

INSERT INTO
farmerFieldRelation (farmerID, fieldID)
VALUES
("F1", "FD1"),
("F1", "FD2"),
("F1", "FD3"),
("F1", "FD4"),
("F1", "FD5"),
("F1", "FD6"),
("F1", "FD7"),
("F1", "FD8"),
("F1", "FD9"),
("F1", "FD10"),
("F2", "FD4"),
("F2", "FD7"),
("F3", "FD1"),
("F3", "FD5"),
("F4", "FD2"),
("F6", "FD8"),
("F7", "FD9"),
("F7", "FD10"),
("F8", "FD9"),
("F8", "FD10");

INSERT INTO
crop (cropID, type, variety, yield, days)
VALUES
("C1", "Wheat", "Durum", "6 to 9 ton/ha", "100 to 130"),
("C2", "Potato", "Charlotte", "25 to 35 ton/ha", "90 to 120"),
("C3", "Cabbage", NULL, "25 to 35 ton/ha", "120 to 140"),
("C4", "Grass", "Ryegrass", "25 ton/ha", "90 to 120");

INSERT INTO
supplier (supplierID, name, street, city, postCode)
VALUES
("S1", "William Eyre & Sons", "Brough Cornmill", "Hope Valley", "S33 9NG"),
("S2", "Wardmans Ltd", "Old Coach Road", "Matlock", "DE4 5FY"),
("S3", "Elsoms Seeds Ltd", "Pinchbeck Rd", "Spalding", "PE11 1QG"),
("S4", "Boston Seeds", "Manor Road", "Boston", "PE20 1PH"),
("S5", "Carr's Billington", "Unit 4-6 Kingfisher Building", "Bakewell", "DE45 1GS"),
("S6", "Shutts Farm Machinery", "Shutts Ln", "Bakewell", "DE45 1JA"),
("S7", "AGRI-Mech", "Old Coach Road", "Matlock", "DE4 5ND"),
("S8", "Abbeydale Direct", "Unit 2 New Haden Industrial Estate", "Cheadle", "ST10 2NP"),
("S9", "Howard & Sons", "Manor Farm", "Devizes", "SN10 5SQ"),
("S10", "Zaros Machinery", "Unit 4, Moat Farm Workshops", "Hintlesham", "IP8 3QH");

INSERT INTO
orders (orderID, farmerID, supplierID, productID, quantity, date)
VALUES
("O1", "F1", "S2", "P4", 1, "2021-04-17"),
("O2", "F2", "S3", "P6", 5, "2021-12-20"),
("O3", "F5", "S1", "P1", 3, "2022-02-18"),
("O4", "F5", "S2", "P5", 1, "2022-08-03"),
("O5", "F5", "S3", "P7", 8, "2022-11-07"),
("O6", "F5", "S4", "P9", 4, "2023-03-16"),
("O7", "F5", "S5", "P10", 1, "2023-03-16"),
("O8", "F5", "S6", "P11", 1, "2023-05-01"),
("O9", "F5", "S7", "P12", 1, "2023-09-30"),
("O10", "F5", "S8", "P13", 10, "2023-09-30"),
("O11", "F5", "S9", "P14", 1, "2023-12-17"),
("O12", "F5", "S10", "P15", 1, "2024-01-11"),
("O13", "F6", "S1", "P2", 2, NOW()),
("O14", "F6", "S1", "P3", 2, NOW()),
("O15", "F6", "S3", "P8", 30, NOW());

INSERT INTO
product (productID, name, price, weight, supplierID)
VALUES
("P1", "Waterproof overalls", 19.95, 0.50, "S1"),
("P2", "Waterproof jacket", 32.95, 0.50, "S1"),
("P3", "Lined boot", 160.00, 1.00, "S1"),
("P4", "Grain trailer", 8500.00, NULL, "S2"),
("P5", "Rotary muck spreader", 4600.00, NULL, "S2"),
("P6", "Wheat seeds", 975.00, 100.00, "S3"),
("P7", "Potato seeds", 199.90, 50.00, "S3"),
("P8", "Cabbage seeds", 24.90, NULL, "S3"),
("P9", "Grass seeds", 75.00, 25.00, "S4"),
("P10", "CLASS 540RF Baler", 23000.00, NULL, "S5"),
("P11", "ELHO V-Twin 600 Swather", 4750.00, NULL, "S6"),
("P12", "Bale spike", 495.00, 35.00, "S7"),
("P13", "Tractor seat covers", 31.03, NULL, "S8"),
("P14", "Crop sprayer", 1495.00, NULL, "S9"),
("P15", "Mower", 1300.00, 260.00, "S10");
