USE production_project;

SELECT * FROM production_data LIMIT 10;

SELECT
Plant,
DATE(Timestamp) AS Date,
HOUR(Timestamp) AS Hour,
SUM(ProductionUnits) AS Hourly_Output
FROM production_data
GROUP BY Plant, Date, Hour
ORDER BY Plant, Date, Hour;

SELECT
Plant,
DATE(Timestamp) AS Date,
SUM(ProductionUnits) AS Daily_Output
FROM production_data
GROUP BY Plant, Date
ORDER BY Plant, Date;

SELECT
MachineID,
AVG(ProductionUnits) AS Avg_Output,
SUM(MaintenanceFlag) AS Maintenance_Count
FROM production_data
GROUP BY MachineID
ORDER BY Avg_Output ASC
LIMIT 10;

SELECT 
    MachineID,
    Plant,
    AVG(ProductionUnits) AS AvgOutput,
    STDDEV(ProductionUnits) AS StdOutput,
    STDDEV(ProductionUnits)/AVG(ProductionUnits) AS CV_Output,
    SUM(MaintenanceFlag) AS MaintenanceCount,
    SUM(DefectCount) AS DefectCountTotal
FROM production_data
GROUP BY MachineID, Plant;