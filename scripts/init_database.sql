/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'olist' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'olist' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


USE master;
Go

---Drop and Recreate the database 'olist'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'olist')
BEGIN
	ALTER DATABASE olist SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE olist;
END;
GO

---Create the 'olist' database
CREATE DATABASE olist;
GO

USE olist;
GO

--create database schema
CREATE SCHEMA bronze;
GO

CREATE  SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
