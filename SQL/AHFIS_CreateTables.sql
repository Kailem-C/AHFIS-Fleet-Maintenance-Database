CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY,
    VIN VARCHAR(50),
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Mileage INT,
    EngineType VARCHAR(50),
    CurrentStatus VARCHAR(50)
);
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CDLNumber VARCHAR(50),
    HireDate DATE
);
CREATE TABLE Shops (
    ShopID INT PRIMARY KEY,
    ShopName VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(2),
    Phone VARCHAR(20)
);
CREATE TABLE Parts (
    PartID INT PRIMARY KEY,
    PartName VARCHAR(100),
    Manufacturer VARCHAR(100),
    PartNumber VARCHAR(100)
);
CREATE TABLE DiagnosticCodes (
    CodeID INT PRIMARY KEY,
    Code VARCHAR(20),
    Description VARCHAR(255),
    Severity VARCHAR(20)
);
CREATE TABLE Repairs (
    RepairID INT PRIMARY KEY,
    VehicleID INT,
    ShopID INT,
    RepairDate DATE,
    Cost DECIMAL(10,2),
    RepairDescription VARCHAR(255),

    FOREIGN KEY (VehicleID)
        REFERENCES Vehicles(VehicleID),

    FOREIGN KEY (ShopID)
        REFERENCES Shops(ShopID)
);
CREATE TABLE RepairParts (
    RepairPartID INT PRIMARY KEY,
    RepairID INT,
    PartID INT,
    Quantity INT,
    UnitCost DECIMAL(10,2)

    FOREIGN KEY (RepairID)
        REFERENCES Repairs(RepairID),

    FOREIGN KEY (PartID)
        REFERENCES Parts(PartID)
);
CREATE TABLE DiagnosticEvents (
    DiagnosticEventID INT PRIMARY KEY,
    VehicleID INT,
    CodeID INT,
    DateDetected DATE,
    Mileage INT,
    Status VARCHAR(50),
    ResolvedDate DATE,
    Notes VARCHAR(255)

    FOREIGN KEY (VehicleID)
        REFERENCES Vehicles(VehicleID),

    FOREIGN KEY (CodeID)
        REFERENCES DiagnosticCodes(CodeID)
);
CREATE TABLE MaintenanceRecords (
    RecordID INT PRIMARY KEY,
    VehicleID INT,
    DriverID INT,
    ServiceType VARCHAR(100),
    ServiceDate DATE,
    Mileage INT,

    FOREIGN KEY (VehicleID)
        REFERENCES Vehicles(VehicleID),

    FOREIGN KEY (DriverID)
        REFERENCES Drivers(DriverID)
);
CREATE TABLE Labor (
    LaborID INT PRIMARY KEY,
    RepairID INT,
    HoursWorked DECIMAL(5,2),
    HourlyRate DECIMAL(10,2),
    TechnicianName VARCHAR(100),

    FOREIGN KEY (RepairID)
        REFERENCES Repairs(RepairID)
);
CREATE TABLE VehicleStatusHistory (
    StatusID INT PRIMARY KEY,
    VehicleID INT,
    Status VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Notes VARCHAR(255),

    FOREIGN KEY (VehicleID)
        REFERENCES Vehicles(VehicleID)
);