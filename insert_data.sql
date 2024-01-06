USE farmManager;

INSERT INTO
farmer (farmerID, firstName, lastName, street, city, postCode, salary)
VALUES
("F1", "George", "Banks", "5 Church Street", "Buxton", "SK17 6HD", 8000),
("F2", "Lucy", "Banks", "5 Church Street", "Buxton", "SK17 6HD", 6000),
("F3", "Tom", "Banks", "Coltcroft farm", "Buxton", "SK17 9RP", 7000),
("F4", "Fred", "Thompson", "12 Cumberland Close", "Buxton", "SK17 9PQ", 7000),
("F5", "Sam", "Smith", "2 Burbage Way", "Buxton", "SK17 9GB", 6000);

INSERT INTO
tractor (tractorID, make, model, age, registrationPlate, power)
VALUES
("T1", "New Holland", "T5.120", 2, "MN71 7GH", "117 HP"),
("T2", "Massey Ferguson", "6480", 19, "CU04 MHA", "150 HP"),
("T3", "Class", "Arion 610 C", 11, "MN12 6GJ", "110 HP"),
("T4", "Fendt", "720 Vario", 4, "MN19 7GH", "185 HP");

INSERT INTO
farmerTractorRelation (farmerID, tractorID)
VALUES
("F1", "T1"),
("F1", "T3"),
("F2", "T3"),
("F3", "T4"),
("F3", "T5"),
("F4", "T2");

INSERT INTO
field (fieldID, name, size, location, cropID)
VALUES
("FD1", "The Ryegrass", 12, "53.2591°N, 1.9148°W", "C1"),
("FD2", "Long Meadow", 10, "53.2581°N, 1.9155°W", "C3"),
("FD3", "Fair Green", 7, "53.2567°N, 1.9160°W", "C2"),
("FD4", "Combines Field", 15, "53.2598°N, 1.9142°W", "C2"),
("FD5", "Tansy Hill", 12, "53.2595°N, 1.9145°W", "C1"),
("FD6", "Crab Tree", 10, "53.2584°N, 1.9134°W", "C3"),
("FD7", "Barrow Field", 15, "53.2576°N, 1.9127°W", "C2");

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
("F2", "FD4"),
("F2", "FD7"),
("F3", "FD1"),
("F3", "FD5"),
("F4", "FD2");

INSERT INTO
crop (cropID, type, variety, yield, days)
VALUES
("C1", "Wheat", "Durum", "6 to 9 ton/ha", "100 to 130"),
("C2", "Potato", "Charlotte", "25 to 35 ton/ha", "90 to 120"),
("C3", "Cabbage", NULL, "25 to 35 ton/ha", "120 to 140");

INSERT INTO
supplier (supplierID, name, street, city, postCode)
VALUES
("S1", "William Eyre & Sons", "Brough Cornmill", "Hope Valley", "S33 9NG"),
("S2", "Wardmans Ltd", "Old Coach Road", "Matlock", "DE4 5FY"),
("S3", "Elsoms Seeds Ltd", "Pinchbeck Rd", "Spalding", "PE11 1QG");

INSERT INTO
farmerSupplierRelation (farmerID, supplierID)
VALUES
("F1", "S2"),
("F2", "S3"),
("F5", "S1"),
("F5", "S2"),
("F5", "S3");

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
("P8", "Cabbage seeds", 24.90, NULL, "S3");
