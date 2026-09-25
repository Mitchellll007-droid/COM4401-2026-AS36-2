-- create the Employee Roles table
CREATE TABLE EmployeeRoles (
  RoleID INTEGER PRIMARY KEY,
  RoleName VARCHAR(50),
  StaffCount INTEGER,
  Tasks VARCHAR(255),
  PerformanceNeeds VARCHAR(100),
  BudgetPerUnit DECIMAL(65)
);

-- Create the Workstation Builds table
CREATE TABLE WorkstationBuilds (
  BuildID INTEGER PRIMARY KEY,
  RoleID INTEGER,
  BuildName VARCHAR(100),
  Source VARCHAR(255),
  FOREIGN KEY(RoleID) REFERENCES EmployeeRoles(RoleID)
);

-- Create the BuildItems table
CREATE TABLE BuildItems (
  ItemID INTEGER PRIMARY KEY,
  BuildID INTEGER,
  HardwareCategory VARCHAR(50),
  ItemName VARCHAR(100),
  Specification VARCHAR(150),
  Cost DECIMAL(65),
  FOREIGN KEY(BuildID) REFERENCES WorkstationBuilds(BuildID)
);

-- Create the final reccomendations table
CREATE TABLE Reccomendations (
  ReccomendationID INTEGER PRIMARY KEY,
  RoleID INTEGER,
  Justification TEXT,
  Compromise TEXT,
  Approved BOOLEAN,
  EthicalNotes TEXT,
  FOREIGN KEY(RoleID) REFERENCES EmployeeRoles(RoleID)
);



-- inserting table values

-- Employee Roles
INSERT INTO EmployeeRoles VALUES (001, "Administrative Assistant", 3,"Email, documents, spreadsheets, web systems, online meetings, and basic customer records", "Basic office hardware workstation ",950.0);
INSERT INTO EmployeeRoles VALUES (002, "Project Manager", 2, "Reports, meetings, project planning, reviewing drawings, dashboards, and client communication","Business hardware workstation with stronger display/workflow setup ", 1300.0 );
INSERT INTO EmployeeRoles VALUES (003, "Architect/CAD Designer", 5, "CAD drawings, 2D drafting, 3D modelling, large design files, multiple monitors, and design reviews", "CAD hardware workstation with dedicated GPU and suitable display ", 2500.0 );
INSERT INTO EmployeeRoles VALUES (004, "3D Visualisation Specialist", 2, "Rendering, 3D visualisation, large models, high-resolution textures, media output, and client visual presentations", "High-performance rendering/visualisation hardware workstation", 3750.0);

-- Workstation Builds
INSERT INTO WorkstationBuilds VALUES (001, 001, "Admin Desktop", "https://uk.buildcores.com/builds/e536if_R1?share=true");
INSERT INTO WorkstationBuilds VALUES (002, 002, "Project Manager Desktop", "https://www.buildcores.com/builds/l8NgnCT2d?share=true");
INSERT INTO WorkstationBuilds VALUES (003, 003, "CAD Design Desktop", "https://uk.buildcores.com/builds/hsLR4n7i_?share=true");
INSERT INTO WorkstationBuilds VALUES (004, 004, "3D Visualisation Desktop", "https://uk.buildcores.com/builds/pur77nzOX?share=true");

-- Build Items

-- ADMIN DEVICE
INSERT INTO BuildItems VALUES (001, 001, "Case", "Fractal Design Focus 2", "ATX Mid Tower", 64.99);
INSERT INTO BuildItems VALUES (002, 001, "CPU", "Intel Core i7 12700K", "3.6GHz", 269.99);
INSERT INTO BuildItems VALUES (003, 001, "Motherboard", "MSI H610 PRO", "Micro ATX", 59.99);
INSERT INTO BuildItems VALUES (004, 001, "RAM", "TEAMGROUP Elite Black", "16GB DDR4-3200", 106.96);
INSERT INTO BuildItems VALUES (005, 001, "CPU Cooler", "Thermalright Assassin X", "120mm Air cooling", 15.00);
INSERT INTO BuildItems VALUES (006, 001, "Storage", "Kingston NV3", "1TB M.2", 128.99);
INSERT INTO BuildItems VALUES (007, 001, "Power Supply", "Thermalright TB550S", "550W 80+ Bronze", 45.00);
INSERT INTO BuildItems VALUES (008, 001, "Case Fan", "ARCTIC P12 Silent", "120mm", 4.99);
INSERT INTO BuildItems VALUES (009, 001, "Thermal Paste", "Corsair TM3O", "3g", 4.99);
INSERT INTO BuildItems VALUES (010, 001, "Monitor", "ASUS PA248QFV", "24.1' 1920x1200", 157.99);
INSERT INTO BuildItems VALUES (011, 001, "Keyboard", "HP 320MK", "Membrane", 20.99);
INSERT INTO BuildItems VALUES (012, 001, "Mouse", "HP 320MK", "Optical Mouse", 0.00);
INSERT INTO BuildItems VALUES (013, 001, "Webcam", "ToLuLu", "1080p HD", 17.72);
INSERT INTO BuildItems VALUES (014, 001, "Headphones", "Razer Kraken", "Closed back", 21.98);

-- PROJECT MANAGER DEVICE
INSERT INTO BuildItems VALUES (015, 002, "Case", "Corsair 3200D RS", "ATX Tower", 59.99);
INSERT INTO BuildItems VALUES (016, 002, "CPU", "Intel Core Ultra 5 245K", "4.2GHz", 175.97);
INSERT INTO BuildItems VALUES (017, 002, "Motherboard", "ASRock B860 Steel Legend", "ATX DDR5", 165.95);
INSERT INTO BuildItems VALUES (018, 002, "RAM", "Kingston FURY Beast", "16GB DDR5-6000", 151.10);
INSERT INTO BuildItems VALUES (019, 002, "CPU Cooler", "Silverstone NovaPeak", "360mm Water cooling", 109.99);
INSERT INTO BuildItems VALUES (020, 002, "Storage", "Seagate BarraCuda", "1TB M.2", 135.97);
INSERT INTO BuildItems VALUES (021, 002, "Power Supply", "Silverstone SFX", "450W 80+ Bronze", 45.00);
INSERT INTO BuildItems VALUES (022, 002, "Monitor", "ASRock Phantom Gaming", "34' 3440x1440 OLED'", 256.89);
INSERT INTO BuildItems VALUES (023, 002, "Keyboard", "HP 320K", "Membrane", 17.76);
INSERT INTO BuildItems VALUES (024, 002, "Mouse", "rii", "Wireless Optical Mouse", 10.99);
INSERT INTO BuildItems VALUES (025, 002, "Webcam", "Vuexar", "1080p HD", 24.08);
INSERT INTO BuildItems VALUES (026, 002, "Headphones", "Genius HS-02B", "Closed back", 4.21);

-- CAD DESIGNER DEVICE
INSERT INTO BuildItems VALUES (027, 003, "Case", "Fractal Design Epoch", "ATX Tower", 69.98);
INSERT INTO BuildItems VALUES (028, 003, "CPU", "AMD Ryzen 9 9900X", "4.4GHz", 299.99);
INSERT INTO BuildItems VALUES (029, 003, "Motherboard", "Gigabyte B850", "ATX DDR5", 136.99);
INSERT INTO BuildItems VALUES (030, 003, "GPU", "Asus TUF RTX 5080", "16GB", 1539.97);
INSERT INTO BuildItems VALUES (031, 003, "RAM", "Silicon Power", "64GB DDR5-6000", 929.10);
INSERT INTO BuildItems VALUES (032, 003, "CPU Cooler", "Corsair NAUTILUS", "360mm Water cooling", 109.99);
INSERT INTO BuildItems VALUES (033, 003, "Storage", "Kingston NV2", "2TB M.2", 199.90);
INSERT INTO BuildItems VALUES (034, 003, "Power Supply", "Antec gsk", "850W 80+ Gold", 89.99);
INSERT INTO BuildItems VALUES (035, 003, "Monitor", "Asus ROG Swift", "26.5' 3440x1440' OLED", 218.99);
INSERT INTO BuildItems VALUES (036, 003, "Keyboard", "Logitech K120", "Membrane", 10.99);
INSERT INTO BuildItems VALUES (037, 003, "Mouse", "Genius DX 110", "Optical Mouse", 3.99);
INSERT INTO BuildItems VALUES (038, 003, "Webcam", "UGREEN", "1080p HD", 16.14);
INSERT INTO BuildItems VALUES (039, 003, "Headphones", "Turtle Beach EAR FORCE", "Closed back", 16.99);

-- 3D VISUALISATION DEVICE
INSERT INTO BuildItems VALUES (040, 004, "Case", "HYTE Y60", "ATX Mid Tower", 120.49);
INSERT INTO BuildItems VALUES (041, 004, "CPU", "AMD Ryzen 9 9950X3D", "4.3GHz", 499.99);
INSERT INTO BuildItems VALUES (042, 004, "Motherboard", "Gigabyte X870E", "ATX DDR5", 453.99);
INSERT INTO BuildItems VALUES (043, 004, "GPU", "Gigabyte Radeon RX 9070 XT", "16GB", 649.99);
INSERT INTO BuildItems VALUES (044, 004, "RAM", "Kingston FURY Beast", "64GB DDR5-5600", 799.99);
INSERT INTO BuildItems VALUES (046, 004, "Storage", "Kingston NV3", "2TB M.2", 229.99);
INSERT INTO BuildItems VALUES (047, 004, "Storage", "Seagate SkyHawk", "10TB HDD 7200RPM", 453.00);
INSERT INTO BuildItems VALUES (048, 004, "Power Supply", "MSI MAG A850GL", "850W 80+ Gold", 99.99);
INSERT INTO BuildItems VALUES (049, 004, "Monitor", "ViewSonic XG272-2K", "27' 3440x1440' OLED", 379.00);
INSERT INTO BuildItems VALUES (050, 004, "Keyboard", "HP 320K", "Membrane", 17.76);
INSERT INTO BuildItems VALUES (051, 004, "Mouse", "AULA SC580", "Wireless Optical Mouse", 56.91);

-- Final reccomendations
INSERT INTO Reccomendations VALUES (001, 001, "", "", TRUE, "");
INSERT INTO Reccomendations VALUES (002, 002, "", "", TRUE, "");
INSERT INTO Reccomendations VALUES (003, 003, "", "", TRUE, "");
INSERT INTO Reccomendations VALUES (004, 004, "", "", TRUE, "");

-- QUERIES PART A

-- QUERY 1
SELECT * FROM EmployeeRoles;

-- QUERY 2
SELECT RoleName, BudgetPerUnit FROM EmployeeRoles;

-- QUERY 3
SELECT RoleName, BudgetPerUnit FROM EmployeeRoles WHERE BudgetPerUnit > 1000;

-- QUERY 4
SELECT RoleName, StaffCount FROM EmployeeRoles ORDER BY StaffCount DESC;

-- QUERY 5 
SELECT * FROM BuildItems WHERE BuildID = 1;

-- QUERY 6
SELECT COUNT(BuildID) FROM BuildItems WHERE BuildID = 1;


-- QUERIES PART B 


-- QUERY 7
SELECT SUM(Cost) AS Total_Value FROM BuildItems WHERE BuildID = 1;
SELECT BuildID, SUM(Cost) AS Total_Value
FROM BuildItems
GROUP BY BuildID
ORDER BY Total_Value DESC;

-- QUERIES PART C

-- QUERY 9
SELECT WorkstationBuilds.BuildName, EmployeeRoles.RoleName
FROM WorkstationBuilds
JOIN EmployeeRoles ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;

-- QUERY 10
SELECT BuildItems.ItemName, WorkstationBuilds.BuildID, EmployeeRoles.RoleName
FROM BuildItems
INNER JOIN WorkstationBuilds ON BuildItems.BuildID = WorkstationBuilds.BuildID
LEFT JOIN EmployeeRoles ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;

-- QUERY 11
SELECT EmployeeRoles.RoleName,
       SUM(BuildItems.Cost * EmployeeRoles.StaffCount) AS TotalCost
FROM EmployeeRoles
LEFT JOIN WorkstationBuilds ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID
LEFT JOIN BuildItems ON BuildItems.BuildID = WorkstationBuilds.BuildID
GROUP BY EmployeeRoles.RoleID, EmployeeRoles.RoleName;
