INSERT INTO Vehicles
(VehicleID, VIN, Make, Model, Year, Mileage, EngineType, CurrentStatus)
VALUES
(1, '4V4NC9EH7PN123456', 'Volvo', 'VNL860', 2026, 425000, 'D13', 'Active'),
(2, '1XPBD49X1FD123456', 'Peterbilt', '579', 2021, 615000, 'Cummins X15', 'Active'),
(3, '3AKJHHDR5MS123456', 'Freightliner', 'Cascadia', 2020, 702000, 'Detroit DD15', 'Out of Service');

INSERT INTO Drivers
(DriverID, FirstName, LastName, CDLNumber, HireDate)
VALUES
(1, 'Kailem', 'Conow', 'CDL1001', '2025-01-01'),
(2, 'Shelani', 'Conow', 'CDL1002', '2025-01-01'),
(3, 'Marcus', 'Reed', 'CDL1003', '2025-06-15');

INSERT INTO Shops
(ShopID, ShopName, City, State, Phone)
VALUES
(1, 'Love''s Truck Care', 'Orlando', 'FL', '407-555-0101'),
(2, 'TA Truck Service', 'Tampa', 'FL', '813-555-0102'),
(3, 'Rush Truck Centers', 'Jacksonville', 'FL', '904-555-0103');

INSERT INTO Parts
(PartID, PartName, Manufacturer, PartNumber)
VALUES
(1, 'Fuel Filter', 'Fleetguard', 'FF63009'),
(2, 'Oil Filter', 'Donaldson', 'P550949'),
(3, 'DPF Sensor', 'Volvo OEM', 'VO-234567');

INSERT INTO DiagnosticCodes
(CodeID, Code, Description, Severity)
VALUES
(1, 'P2002', 'Diesel particulate filter efficiency below threshold', 'High'),
(2, 'P0087', 'Fuel rail/system pressure too low', 'High'),
(3, 'P0299', 'Turbocharger underboost condition', 'Medium');

INSERT INTO Repairs
(RepairID, VehicleID, ShopID, RepairDate, Cost, RepairDescription)
VALUES
(1, 1, 1, '2026-06-20', 425.00, 'Preventive maintenance service'),
(2, 2, 2, '2026-06-21', 980.00, 'Fuel filter and diagnostic repair'),
(3, 3, 3, '2026-06-22', 1350.00, 'DPF sensor replacement');

INSERT INTO RepairParts
(RepairPartID, RepairID, PartID, Quantity, UnitCost)
VALUES
(1, 1, 2, 1, 65.00),
(2, 2, 1, 2, 85.00),
(3, 3, 3, 1, 450.00);

INSERT INTO DiagnosticEvents
(DiagnosticEventID, VehicleID, CodeID, DateDetected, Mileage, Status, ResolvedDate, Notes)
VALUES
(1, 3, 1, '2026-06-18', 702000, 'Resolved', '2026-06-22', 'DPF sensor replaced'),
(2, 2, 2, '2026-06-19', 615000, 'Resolved', '2026-06-21', 'Fuel restriction corrected'),
(3, 1, 3, '2026-06-20', 425000, 'Open', NULL, 'Monitor turbo boost levels');

INSERT INTO MaintenanceRecords
(RecordID, VehicleID, DriverID, ServiceType, ServiceDate, Mileage, Notes)
VALUES
(1, 1, 1, 'Oil Change', '2026-06-20', 425000, 'Routine PM service'),
(2, 2, 2, 'Fuel Filter Replacement', '2026-06-21', 615000, 'Low fuel pressure issue'),
(3, 3, 3, 'DPF Diagnostic', '2026-06-22', 702000, 'DPF fault resolved');

INSERT INTO Labor
(LaborID, RepairID, HoursWorked, HourlyRate)
VALUES
(1, 1, 2.00, 145.00),
(2, 2, 3.50, 160.00),
(3, 3, 4.00, 185.00);

INSERT INTO VehicleStatusHistory
(StatusID, VehicleID, Status, StartDate, EndDate, Notes)
VALUES
(1, 1, 'Active', '2026-06-20', NULL, 'Truck available'),
(2, 2, 'Active', '2026-06-21', NULL, 'Returned to service'),
(3, 3, 'Active', '2026-06-18', '2026-06-22', 'DPF sensor repair');