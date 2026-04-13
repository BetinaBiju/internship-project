#internship-project

This repository contains solutions for the Digital Maven Set 4: Throughput & Capacity Stability assessment. 
The project focuses on analyzing industrial machine health, production efficiency, and maintenance patterns using Excel, SQL, Python, and Power BI.

Project Overview:
  The goal of this project is to evaluate machine throughput, identify capacity bottlenecks, and analyze production stability. 
  It involves processing hourly production data, forecasting future output, and building interactive dashboards for maintenance and stability tracking.

Questions & Task Requirements


Phase 1: Excel Analysis
  
  Q1: Throughput Reporting
    Create a throughput report showing hourly ProductionUnits by Plant and MachineID.
    Identify peak hours and low-output hours per Plant.
    Build a utilization proxy: 
      ProductionUnits / plant daily max.
  
  Q2: Stability Analysis
    Create a stability sheet and compute the Coefficient of Variation ($CV = \sigma / \mu$) of ProductionUnits per MachineID.
    Flag machines with the highest variability and correlate them with Maintenance Flag frequency.

Phase 2: SQL Data Aggregation
  
  Q3: Aggregate Metrics
    Return hourly and daily aggregates of ProductionUnits per Plant.
    Identify the top 10 machines with the lowest average ProductionUnits and their corresponding maintenance counts.
  
  Q4: Table Schema
    Create a table capacity_stability_2025 containing: MachineID, Plant, AvgOutput, StdOutput, CV_Output, MaintenanceCount, and DefectCountTotal.

Phase 3: Python & Machine Learning
  
  Q5: Time-Series Forecasting
    Forecast daily total ProductionUnits per Plant for the next 14 days.
    Implement a simple baseline and one ML model. Report MAPE (Mean Absolute Percentage Error).
  
  Q6: Classification
    Predict "LowOutputEvent" (where ProductionUnits < plant-hour 10th percentile) using sensor data and EnergyConsumption.
    Evaluate using F1-Score.

Phase 4: Power BI Dashboards
  
  Q7: Capacity Dashboard
    Visualize daily production trends and plant comparisons.
    Highlight top low-output machines and include a heatmap-style matrix (Hour vs. Day) for ProductionUnits.
  
  Q8: Stability Dashboard
    Visualize CV_Output by machine and maintenance vs. output correlations.
    Implement drill-through functionality for MachineID to view hourly production and sensor data.


Repository Structure

question1.xlsx & question2.xlsx: Excel workbooks with throughput and stability calculations.

question 3 & 4.sql: SQL scripts for data aggregation and table creation.

Question 5 & 6.ipynb: Jupyter Notebook containing forecasting and classification models.

Question 7.pbit & Question 8.pbit: Power BI templates for the Capacity and Stability dashboards.

Dataset.csv: Raw data used for the analysis.
