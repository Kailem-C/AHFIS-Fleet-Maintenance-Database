# AHFIS Entity Relationship Design

## Vehicles

VehicleID (PK)
VIN
Make
Model
Year
Mileage
EngineType
CurrentStatus

## Drivers

DriverID (PK)
FirstName
LastName
CDLNumber
HireDate

## Shops

ShopID (PK)
ShopName
City
State
Phone

## Repairs

RepairID (PK)
VehicleID (FK)
ShopID (FK)
RepairDate
PartsCost
LaborHours
LaborRate
LaborCost
TotalCost

## Parts

PartID (PK)
PartName
Manufacturer
PartNumber

## Repair/Parts

RepairPartID (PK)
RepairID (FK)
PartID (FK)
Quantity

## DiagnosticCodes

CodeID (PK)
Code
Description
Severity

## DiagnosticEvents

DiagnosticEventID (PK)
VehicleID (FK)
CodeID (FK)
DateDetected
Mileage
Status

## VehicleStatusHistory

StatusID (PK)
VehicleID (FK)
Status
StartDate
EndDate
Notes

## MaintenanceRecords

RecordID (PK)
VehicleID (FK)
DriverID (FK)
ServiceType
ServiceDate
Mileage
Cost
Notes

## Relationships

Vehicle 1 → Many Repairs

Vehicle 1 → Many MaintenanceRecords

Vehicle 1 → Many DiagnosticEvents

Shop 1 → Many Repairs

Driver 1 → Many MaintenanceRecords

Repair 1 → Many RepairParts

Part 1 → Many RepairParts

DiagnosticCode 1 → Many DiagnosticEvents