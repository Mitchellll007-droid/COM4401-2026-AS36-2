-- create
CREATE TABLE EmployeeRoles (
  RoleID INTEGER PRIMARY KEY,
  RoleName VARCHAR(50),
  StaffCount INTEGER,
  Tasks VARCHAR(255),
  PerformanceNeed VARCHAR(100) ,
  BudgetPerUnit DECIMAL(8,2)
);

CREATE TABLE WorkstationBuilds (
  BuildID INTEGER PRIMARY KEY,
  RoleID INTEGER REFERENCES EmployeeRoles(RoleID),
  BuildName VARCHAR(100),
  Source VARCHAR(50)
);

CREATE TABLE Recommendations (
  RecommendationID INTEGER PRIMARY KEY,
  RoleID INTEGER REFERENCES EmployeeRoles(RoleID),
  Justification TEXT,
  Compromise TEXT,
  Approved BOOLEAN,
  EthicalNotes TEXT
);

CREATE TABLE BuildItems (
  ItemID INTEGER PRIMARY KEY,
  BuildID INTEGER REFERENCES WorkstationBuilds(BuildID),
  HardwareCategory VARCHAR(50),
  ItemName VARCHAR(100),
  Specification VARCHAR(150),
  Cost DECIMAl(8,2)
);

-- insert EmployeeRoles
INSERT INTO EmployeeRoles VALUES(
  1, 'Administrative Assistant', 3, 'Email, documents, spreadsheets, web systems, online meetings, and basic customer records.',
   'Basic office hardware workstation', 950
);
INSERT INTO EmployeeRoles VALUES(
  2, 'Project Manager', 2, 'Reports, meetings, project planning, reviewing drawings, dashboards, and client communication.',
   'Business hardware workstation with stronger display/workflow setup', 1300
);
INSERT INTO EmployeeRoles VALUES(
  3, 'Architect / CAD Designer', 5, 'CAD drawings, 2D drafting, 3D modelling, large design files, multiple monitors, and design reviews.',
   'CAD hardware workstation with dedicated GPU and suitable display', 2500
);
INSERT INTO EmployeeRoles VALUES(
  4, '3D Visualisation Specialist', 2, 'Rendering, 3D visualisation, large models, high-resolution textures, media output, and client visual presentations.',
   'High-performance rendering/visualisation hardware workstation', 3750
);

--insert WorkstationBuilds
INSERT INTO WorkstationBuilds VALUES(
  1, 1, 'Administrative Assistant workstation', 'Builcores'
);
INSERT INTO WorkstationBuilds VALUES(
  2, 2, 'Project Manager workstation', 'Builcores'
);
INSERT INTO WorkstationBuilds VALUES(
  3, 3, 'Architect / CAD Designer workstation', 'Builcores'
);
INSERT INTO WorkstationBuilds VALUES(
  4, 4, '3D Visualisation Specialist workstation', 'Builcores'
);

--insert 3D Visualisation Specialist BuildItems
INSERT INTO BuildItems VALUES(
  1, 4, 'Case', 'HYTE Y60 Case', 'Dual Chamber Case with PCIe 4.0 Cable', 120.49
);
INSERT INTO BuildItems VALUES(
  2, 4, 'CPU', 'AMD Ryzen 9', '9950X3D CPU', 499.99
);
INSERT INTO BuildItems VALUES(
  3, 4, 'Motherboard', 'Gigabyte X870E', 'DDR5 ATX Motherboard', 453.99
);
INSERT INTO BuildItems VALUES(
  4, 4, 'GPU', 'Gigabyte Radeon RX 9070 GPU', 'GPU with 16GB VRAM', 649.99
);
INSERT INTO BuildItems VALUES(
  5, 4, 'RAM', 'Kingston FURY Beast RAM', '64GB DDR5 RAM', 799.99
);
INSERT INTO BuildItems VALUES(
  6, 4, 'Storage', 'Kingston NV3', '2TB SSD NVME', 229.99
);
INSERT INTO BuildItems VALUES(
  7, 4, 'Backup Storage', 'Seagate SkyHawk AI', '10TB 7200RPM SATA', 435.00
);
INSERT INTO BuildItems VALUES(
  8, 4, 'Power Supply', 'MSI MAG A850GL PCIE5', '850W Power Supply', 99.99 
);
INSERT INTO BuildItems VALUES(
  9, 4, 'Monitor', 'ViewSonic XG272-2K-OLED', '2K OLED 1440p 240Hz', 379.00
);
INSERT INTO BuildItems VALUES(
  10, 4, 'Keyboard', 'HP 320K Keyboard', 'Standard Wired Keyboard', 17.76
);
INSERT INTO BuildItems VALUES(
  11, 4, 'Mouse', 'AULA SC580 Mouse', 'Wireless Mouse', 56.91
);

--insert Project Manager BuildItems
INSERT INTO BuildItems VALUES(
  12, 2, 'Case', 'Corsair 3200D RS Black', 'Simple PC Case', 59.99
);
INSERT INTO BuildItems VALUES(
  13, 2, 'CPU', 'Intel Core Ultra 5 245K', '9950X3D CPU', 175.97
);
INSERT INTO BuildItems VALUES(
  14, 2, 'Motherboard', 'ASRock B860 Steel Legend WiFi DDR5 ATX', 'DDR5 ATX Motherboard', 165.95
);
INSERT INTO BuildItems VALUES(
  15, 2, 'RAM', 'Kingston FURY Beast Black DDR5-6000 CL40 16GB (2x8GB)', '64GB DDR5 RAM', 151.01
);
INSERT INTO BuildItems VALUES(
  16, 2, 'CPU Cooler', 'Silverstone NovaPeak 360 Water 360mm 69.8 CFM Black', '64GB DDR5 RAM', 109.99
);
INSERT INTO BuildItems VALUES(
  17, 2, 'Storage', 'Seagate BarraCuda Q5 1TB SSD M.2-2280 PCIe 3.0 X4 NVMe', '2TB SSD NVME', 135.90
);
INSERT INTO BuildItems VALUES(
  18, 2, 'Webcam', 'Vuexar Full HD 1080P Webcam with Microphone, Noise-Canceling,
   Privacy Cover, Wide-Angle Lens, Auto Light Correction, Plug & Play USB Web Camera for Laptop, Desktop, PC, Mac, Zoom, Skype – Pro Series', '10TB 7200RPM SATA', 24.08
);
INSERT INTO BuildItems VALUES(
  19, 2, 'Power Supply', 'Silverstone SFX Black 450W Non-Modular 80+ Bronze Certified', '850W Power Supply', 75.49
);
INSERT INTO BuildItems VALUES(
  20, 2, 'Monitor', 'ASRock Phantom Gaming PG34QRT3A 34 inch 3440x1440 180Hz VA Curved Monitor', '2K OLED 1440p 240Hz', 256.64
);
INSERT INTO BuildItems VALUES(
  21, 2, 'Keyboard', 'HP 320K Keyboard', 'Standard Wired Keyboard', 17.76
);
INSERT INTO BuildItems VALUES(
  22, 2, 'Mouse', 'Rii Wireless Mouse 1000DPI for PC, Laptop, Windows,Included Wireless USB dongle', 'Wireless Mouse', 10.99
);
INSERT INTO BuildItems VALUES(
  23, 2, 'Headphones', 'Genius HS-02B Closed Black / Silver Headset', 'Standard Wired Keyboard', 4.21
);

--insert Administrative Assistant BuildItems
INSERT INTO BuildItems VALUES(
  24, 1,'Case', 'HYTE Y60 Case', 'Dual Chamber Case with PCIe 4.0 Cable', 120.49
);
INSERT INTO BuildItems VALUES(
  25, 1, 'CPU', 'AMD Ryzen 9', '9950X3D CPU', 499.99
);
INSERT INTO BuildItems VALUES(
  26, 1, 'Motherboard', 'Gigabyte X870E', 'DDR5 ATX Motherboard', 453.99
);
INSERT INTO BuildItems VALUES(
  27, 1, 'GPU', 'Gigabyte Radeon RX 9070 GPU', 'GPU with 16GB VRAM', 649.99
);
INSERT INTO BuildItems VALUES(
  28, 1, 'RAM', 'Kingston FURY Beast RAM', '64GB DDR5 RAM', 799.99
);
INSERT INTO BuildItems VALUES(
  29, 1, 'Storage', 'Kingston NV3','2TB SSD NVME', 229.99
);
INSERT INTO BuildItems VALUES(
  30, 1, 'Backup Storage', 'Seagate SkyHawk AI ', '10TB 7200RPM SATA', 435.00
);
INSERT INTO BuildItems VALUES(
  31, 1, 'Power Supply', 'MSI MAG A850GL PCIE5', '850W Power Supply', 99.99 
);
INSERT INTO BuildItems VALUES(
  32, 1, 'Monitor', 'ViewSonic XG272-2K-OLED ', '2K OLED 1440p 240Hz', 379.00
);
INSERT INTO BuildItems VALUES(
  33, 1, 'Keyboard', 'HP 320K Keyboard', 'Standard Wired Keyboard', 17.76
);
INSERT INTO BuildItems VALUES(
  34, 1, 'Mouse', 'AULA SC580 Mouse', 'Wireless Mouse', 56.91
);

--insert CAD Designer BuildItems
INSERT INTO BuildItems VALUES(
  35, 3, 'Case', 'HYTE Y60 Case', 'Dual Chamber Case with PCIe 4.0 Cable', 120.49
);
INSERT INTO BuildItems VALUES(
  36, 3, 'CPU', 'AMD Ryzen 9', '9950X3D CPU', 499.99
);
INSERT INTO BuildItems VALUES(
  37, 3, 'Motherboard', 'Gigabyte X870E', 'DDR5 ATX Motherboard', 453.99
);
INSERT INTO BuildItems VALUES(
  38, 3, 'GPU', 'Gigabyte Radeon RX 9070 GPU', 'GPU with 16GB VRAM', 649.99
);
INSERT INTO BuildItems VALUES(
  39, 3, 'RAM', 'Kingston FURY Beast RAM', '64GB DDR5 RAM', 799.99
);
INSERT INTO BuildItems VALUES(
  40, 3, 'Storage', 'Kingston NV3', '2TB SSD NVME', 229.99
);
INSERT INTO BuildItems VALUES(
  41, 3, 'Backup Storage', 'Seagate SkyHawk AI', '10TB 7200RPM SATA', 435.00
);
INSERT INTO BuildItems VALUES(
  42, 3, 'Power Supply', 'MSI MAG A850GL PCIE5', '850W Power Supply', 99.99 
);
INSERT INTO BuildItems VALUES(
  43, 3, 'Monitor', 'ViewSonic XG272-2K-OLED', '2K OLED 1440p 240Hz', 379.00
);
INSERT INTO BuildItems VALUES(
  44, 3, 'Keyboard', 'HP 320K Keyboard', 'Standard Wired Keyboard', 17.76
);
INSERT INTO BuildItems VALUES(
  45, 3, 'Mouse', 'AULA SC580 Mouse', 'Wireless Mouse', 56.91
);

--insert Recommendations

INSERT INTO Recommendations VALUES
(1, 1,'','',TRUE,''
);

INSERT INTO Recommendations VALUES
(2, 2,'','',TRUE,''
);

INSERT INTO Recommendations VALUES
(3, 3,'','',TRUE,''
);

INSERT INTO Recommendations VALUES
(4, 4,'','',TRUE,''
);

--Query 1
SELECT * 
FROM EmployeeRoles;
--Query 2
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles;
--Query 3
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles
WHERE BudgetPerUnit > 1000;
--Query 4
SELECT RoleName, StaffCount
FROM EmployeeRoles
ORDER BY StaffCount DESC;
--Query 5
SELECT *
FROM BuildItems
WHERE BuildID = 1;
--Query 6
SELECT COUNT(*) AS NumberofItems
FROM BuildItems
WHERE BuildID = 1;

--Query 7
SELECT SUM(Cost) AS TotalBuildCost
FROM BuildItems
WHERE BuildID = 1;
--Query 8
SELECT BuildID, SUM(Cost) AS TotalBuildCost
FROM BuildItems
GROUP BY BuildID
ORDER BY TotalBuildCost DESC;

--Query 9
SELECT WorkstationBuilds.BuildName, EmployeeRoles.RoleName
FROM WorkstationBuilds
JOIN EmployeeRoles
ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;
--Query 10
SELECT BuildItems.ItemName, WorkstationBuilds.BuildName,  EmployeeRoles.RoleName
FROM BuildItems
JOIN WorkstationBuilds
ON BuildItems.BuildID = WorkstationBuilds.BuildID
JOIN EmployeeRoles
ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;
--Query 11
SELECT 
EmployeeRoles.RoleName,
SUM(BuildItems.Cost) AS TotalHardwareCost
FROM EmployeeRoles
JOIN WorkstationBuilds
ON EmployeeRoles.RoleID = WorkstationBuilds.RoleID
JOIN BuildItems
ON WorkstationBuilds.BuildID = BuildItems.BuildID
GROUP BY EmployeeRoles.RoleName;

