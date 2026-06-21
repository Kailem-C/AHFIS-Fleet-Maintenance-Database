-- Show all vehicles
SELECT * FROM Vehicles;
-- Show active vehicles
SELECT *
FROM Vehicles
WHERE CurrentStatus = 'Active';
-- Show open diagnostic events
SELECT *
FROM DiagnosticEvents
WHERE Status = 'Open';
-- Total repair cost by vehicle
SELECT VehicleID,
       SUM(Cost) AS TotalRepairCost
FROM Repairs
GROUP BY VehicleID;
-- Maintenance history
SELECT VehicleID,
       ServiceType,
       ServiceDate
FROM MaintenanceRecords
ORDER BY ServiceDate;
-- Labor cost estimate
SELECT RepairID,
       HoursWorked,
       HourlyRate,
       HoursWorked * HourlyRate AS LaborCost
FROM Labor;
-- Total repair cost by vehicle

SELECT VehicleID,
       SUM(Cost) AS TotalRepairCost
FROM Repairs
GROUP BY VehicleID;
-- Most common diagnostic codes

SELECT CodeID,
       COUNT(*) AS Occurrences
FROM DiagnosticEvents
GROUP BY CodeID
ORDER BY Occurrences DESC;
SELECT dc.Code,
       COUNT(*) AS Occurrences
FROM DiagnosticEvents de
JOIN DiagnosticCodes dc
    ON de.CodeID = dc.CodeID
GROUP BY dc.Code
ORDER BY Occurrences DESC;
-- Maintenance history by vehicle

SELECT VehicleID,
       ServiceType,
       ServiceDate,
       Mileage
FROM MaintenanceRecords
ORDER BY VehicleID, ServiceDate;
-- Parts used per repair

SELECT rp.RepairID,
       p.PartName,
       rp.Quantity,
       rp.UnitCost
FROM RepairParts rp
JOIN Parts p
    ON rp.PartID = p.PartID
ORDER BY rp.RepairID;
-- Vehicles currently out of service

SELECT VehicleID,
       Make,
       Model,
       CurrentStatus
FROM Vehicles
WHERE CurrentStatus = 'Out of Service';
-- Total labor cost by repair

SELECT RepairID,
       HoursWorked,
       HourlyRate,
       HoursWorked * HourlyRate AS LaborCost
FROM Labor;
