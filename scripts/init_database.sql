/*
=============================================================
Create Database/Schemas
=============================================================
Script Purpose:
The script sets up three schemas/database: 'bronze', 'silver', and 'gold'.
In MySQL schema and databases are interchangeable, they are synonyms unlike SQL Server
*/

-- Create Schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
