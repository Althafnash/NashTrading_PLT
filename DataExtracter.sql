-- Active: 1779387795103@@127.0.0.1@5432@API_Database@HistoricalStockData
CREATE SCHEMA IF NOT EXISTS "HistoricalStockData";

-- Agilent_Technologies 
DROP TABLE IF EXISTS "HistoricalStockData"."Agilent_Technologies";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Agilent_Technologies" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Agilent_Technologies" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\A.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Agilent_Technologies" LIMIT 10;

DROP TABLE IF EXISTS "HistoricalStockData"."Apple";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Apple" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Apple" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AAPL.csv' DELIMITER ',' CSV HEADER;

-- Apple
SELECT * FROM "HistoricalStockData"."Apple" LIMIT 10;

DROP TABLE IF EXISTS "HistoricalStockData"."Apple";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Apple" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Apple" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AAPL.csv' DELIMITER ',' CSV HEADER;

-- AbbVie
SELECT * FROM "HistoricalStockData"."Airbnb" LIMIT 10;

DROP TABLE IF EXISTS "HistoricalStockData"."AbbVie";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AbbVie" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AbbVie" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ABBV.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AbbVie" LIMIT 10;

-- Airbnb
DROP TABLE IF EXISTS "HistoricalStockData"."Airbnb";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Airbnb" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Airbnb" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ABNB.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Airbnb" LIMIT 10;

-- Abbott Laboratories
DROP TABLE IF EXISTS "HistoricalStockData"."Abbott Laboratories";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Abbott Laboratories" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Abbott Laboratories" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ABT.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Abbott Laboratories" LIMIT 10;

-- Arch Capital Group
DROP TABLE IF EXISTS "HistoricalStockData"."Arch Capital Group";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Arch Capital Group" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Arch Capital Group" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ACGL.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Arch Capital Group" LIMIT 10;

-- Accenture
DROP TABLE IF EXISTS "HistoricalStockData"."Accenture";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Accenture" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Accenture" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ACN.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Accenture" LIMIT 10;

-- Adobe Inc.
DROP TABLE IF EXISTS "HistoricalStockData"."Adobe Inc";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Adobe Inc" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Adobe Inc" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ADBE.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Adobe Inc" LIMIT 10;

-- Analog Devices
DROP TABLE IF EXISTS "HistoricalStockData"."Analog Devices";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Analog Devices" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Analog Devices" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ADBE.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Analog Devices" LIMIT 10;

-- Automatic Data Processing
DROP TABLE IF EXISTS "HistoricalStockData"."Automatic Data Processing";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Automatic Data Processing" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Automatic Data Processing" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ADP.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Automatic Data Processing" LIMIT 10;

-- Autodesk
DROP TABLE IF EXISTS "HistoricalStockData"."Autodesk";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Autodesk" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Autodesk" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ADSK.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Autodesk" LIMIT 10;

-- Ameren
DROP TABLE IF EXISTS "HistoricalStockData"."Ameren";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Ameren" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Ameren" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AEE.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Ameren" LIMIT 10;

-- 	American Electric Power
DROP TABLE IF EXISTS "HistoricalStockData"."American Electric Power";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American Electric Power" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American Electric Power" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AEP.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American Electric Power" LIMIT 10;

-- 	AES Corporation	
DROP TABLE IF EXISTS "HistoricalStockData"."AES Corporation";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AES Corporation" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AES Corporation" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AES.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AES Corporation" LIMIT 10;

-- Aflac
DROP TABLE IF EXISTS "HistoricalStockData"."Aflac";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Aflac" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Aflac" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AFL.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Aflac" LIMIT 10;

-- American International Group
DROP TABLE IF EXISTS "HistoricalStockData"."American International Group";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American International Group" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American International Group" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AIG.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American International Group" LIMIT 10;

-- Assurant
DROP TABLE IF EXISTS "HistoricalStockData"."Assurant";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Assurant" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Assurant" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AIZ.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Assurant" LIMIT 10;

-- Arthur J. Gallagher & Co.
DROP TABLE IF EXISTS "HistoricalStockData"."Arthur J. Gallagher & Co.";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Arthur J. Gallagher & Co." (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Arthur J. Gallagher & Co." FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AJG.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Arthur J. Gallagher & Co." LIMIT 10;

-- Akamai Technologies
DROP TABLE IF EXISTS "HistoricalStockData"."Akamai Technologies";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Akamai Technologies" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Akamai Technologies" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AKAM.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Akamai Technologies" LIMIT 10;

-- Akamai Technologies
DROP TABLE IF EXISTS "HistoricalStockData"."Akamai Technologies";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Akamai Technologies" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Akamai Technologies" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AKAM.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Akamai Technologies" LIMIT 10;

-- Albemarle Corporation
DROP TABLE IF EXISTS "HistoricalStockData"."Albemarle Corporation";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Albemarle Corporation" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Albemarle Corporation" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ALB.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Albemarle Corporation" LIMIT 10;

-- Align Technology
DROP TABLE IF EXISTS "HistoricalStockData"."Align Technology";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Align Technology" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Align Technology" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ALGN.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Align Technology" LIMIT 10;

-- Allegion
DROP TABLE IF EXISTS "HistoricalStockData"."Allegion";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Allegion" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Allegion" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ALLE.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Allegion" LIMIT 10;

-- Amcor
DROP TABLE IF EXISTS "HistoricalStockData"."Amcor";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Amcor" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Amcor" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AMCR.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Amcor" LIMIT 10;

-- AMD
DROP TABLE IF EXISTS "HistoricalStockData"."AMD";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AMD" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AMD" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AMD.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AMD" LIMIT 10;

-- Ametek
DROP TABLE IF EXISTS "HistoricalStockData"."Ametek";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Ametek" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Ametek" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AME.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Ametek" LIMIT 10;

-- American Tower
DROP TABLE IF EXISTS "HistoricalStockData"."American Tower";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American Tower" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American Tower" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AMT.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American Tower" LIMIT 10;

-- Amazon
DROP TABLE IF EXISTS "HistoricalStockData"."Amazon";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Amazon" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Amazon" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AMZN.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Amazon" LIMIT 10;

-- Arista Networks
DROP TABLE IF EXISTS "HistoricalStockData"."Arista Networks";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Arista Networks" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Arista Networks" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\ANET.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Arista Networks" LIMIT 10;

-- Aon plc
DROP TABLE IF EXISTS "HistoricalStockData"."Aon plc";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Aon plc" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Aon plc" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AON.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Aon plc" LIMIT 10;

-- A. O. Smith
DROP TABLE IF EXISTS "HistoricalStockData"."A. O. Smith";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."A. O. Smith" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."A. O. Smith" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AOS.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."A. O. Smith" LIMIT 10;

-- APA Corporation	
DROP TABLE IF EXISTS "HistoricalStockData"."APA Corporation	";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."APA Corporation	" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."APA Corporation	" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APA.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."APA Corporation	" LIMIT 10;

-- Air Products
DROP TABLE IF EXISTS "HistoricalStockData"."Air Products";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Air Products" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Air Products" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APD.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Air Products" LIMIT 10;

-- Amphenol
DROP TABLE IF EXISTS "HistoricalStockData"."Amphenol";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Amphenol" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Amphenol" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APH.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Amphenol" LIMIT 10;

-- Apollo Global Management
DROP TABLE IF EXISTS "HistoricalStockData"."Apollo Global Management";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Apollo Global Management" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Apollo Global Management" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APO.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Apollo Global Management" LIMIT 10;

-- AppLovin
DROP TABLE IF EXISTS "HistoricalStockData"."AppLovin";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AppLovin" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AppLovin" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APP.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AppLovin" LIMIT 10;

-- Aptiv
DROP TABLE IF EXISTS "HistoricalStockData"."Aptiv";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Aptiv" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Aptiv" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\APTV.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Aptiv" LIMIT 10;

-- Ares Management
DROP TABLE IF EXISTS "HistoricalStockData"."Ares Management";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Ares Management" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Ares Management" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AREs.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Ares Management" LIMIT 10;

-- Ares Management
DROP TABLE IF EXISTS "HistoricalStockData"."Ares Management";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Ares Management" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Ares Management" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AREs.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Ares Management" LIMIT 10;

-- AvalonBay Communities
DROP TABLE IF EXISTS "HistoricalStockData"."AvalonBay Communities";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AvalonBay Communities" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AvalonBay Communities" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AVB.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AvalonBay Communities" LIMIT 10;

-- Avago Technologies
DROP TABLE IF EXISTS "HistoricalStockData"."Avago Technologies";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Avago Technologies" (
    "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Avago Technologies" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AVGO.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Avago Technologies" LIMIT 10;

-- Avery Dennison
DROP TABLE IF EXISTS "HistoricalStockData"."Avery Dennison";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Avery Dennison" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Avery Dennison" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AVGO.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Avery Dennison" LIMIT 10;

-- American Water Works
DROP TABLE IF EXISTS "HistoricalStockData"."American Water Works";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American Water Works" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American Water Works" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AWK.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American Water Works" LIMIT 10;

-- American Water Works
DROP TABLE IF EXISTS "HistoricalStockData"."American Water Works";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American Water Works" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American Water Works" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AWK.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American Water Works" LIMIT 10;

-- AAxon Enterprise
DROP TABLE IF EXISTS "HistoricalStockData"."AAxon Enterprise";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AAxon Enterprise" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AAxon Enterprise" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AXON.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AAxon Enterprise" LIMIT 10;

-- American Express
DROP TABLE IF EXISTS "HistoricalStockData"."American Express";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."American Express" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."American Express" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AXP.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."American Express" LIMIT 10;

-- AutoZone
DROP TABLE IF EXISTS "HistoricalStockData"."AutoZone";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."AutoZone" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."AutoZone" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\AZO.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."AutoZone" LIMIT 10;

-- Boeing
DROP TABLE IF EXISTS "HistoricalStockData"."Boeing";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Boeing" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Boeing" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BA.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Boeing" LIMIT 10;

-- Boeing
DROP TABLE IF EXISTS "HistoricalStockData"."Boeing";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Boeing" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Boeing" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BA.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Boeing" LIMIT 10;

-- Bank of America
DROP TABLE IF EXISTS "HistoricalStockData"."Bank of America";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Bank of America" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Bank of America" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BAC.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Bank of America" LIMIT 10;

-- Ball Corporation
DROP TABLE IF EXISTS "HistoricalStockData"."Ball Corporation";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Ball Corporation" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Ball Corporation" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BALL.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Ball Corporation" LIMIT 10;

-- Baxter International
DROP TABLE IF EXISTS "HistoricalStockData"."Baxter International";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Baxter International" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Baxter International" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BAX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Baxter International" LIMIT 10;

-- Best Buy
DROP TABLE IF EXISTS "HistoricalStockData"."Best Buy";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Best Buy" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Best Buy" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BBY.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Best Buy" LIMIT 10;

-- Becton Dickinson
DROP TABLE IF EXISTS "HistoricalStockData"."Becton Dickinson";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Becton Dickinson" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Becton Dickinson" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BDX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Becton Dickinson" LIMIT 10;

-- Franklin Resources
DROP TABLE IF EXISTS "HistoricalStockData"."Franklin Resources";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Franklin Resources" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Franklin Resources" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BEN.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Franklin Resources" LIMIT 10;

-- Brown-Forman Corp Class B
DROP TABLE IF EXISTS "HistoricalStockData"."Brown-Forman Corp Class B";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Brown-Forman Corp Class B" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Brown-Forman Corp Class B" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BF-B.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Brown-Forman Corp Class B" LIMIT 10;

-- Brown-Forman Corp Class B
DROP TABLE IF EXISTS "HistoricalStockData"."Brown-Forman Corp Class B";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Brown-Forman Corp Class B" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Brown-Forman Corp Class B" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BF-B.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Brown-Forman Corp Class B" LIMIT 10;

-- Bunge Global
DROP TABLE IF EXISTS "HistoricalStockData"."Bunge Global";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Bunge Global" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Bunge Global" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BG.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Bunge Global" LIMIT 10;

-- Biogen
DROP TABLE IF EXISTS "HistoricalStockData"."Biogen";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Biogen" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Biogen" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BIIB.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Biogen" LIMIT 10;

-- Booking Holdings
DROP TABLE IF EXISTS "HistoricalStockData"."Booking Holdings";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Booking Holdings" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Booking Holdings" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BKNG.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Booking Holdings" LIMIT 10;

-- Baker Hughes
DROP TABLE IF EXISTS "HistoricalStockData"."Baker Hughes";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Baker Hughes" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Baker Hughes" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BKR.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Baker Hughes" LIMIT 10;

-- Baker Hughes
DROP TABLE IF EXISTS "HistoricalStockData"."Baker Hughes";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Baker Hughes" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Baker Hughes" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BKR.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Baker Hughes" LIMIT 10;

-- Builders FirstSource
DROP TABLE IF EXISTS "HistoricalStockData"."Builders FirstSource";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Builders FirstSource" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Builders FirstSource" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BLDR.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Builders FirstSource" LIMIT 10;

-- BlackRock Inc
DROP TABLE IF EXISTS "HistoricalStockData"."BlackRock Inc";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."BlackRock Inc" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."BlackRock Inc" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BLK.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."BlackRock Inc" LIMIT 10;

-- Bristol Myers Squibb
DROP TABLE IF EXISTS "HistoricalStockData"."Bristol Myers Squibb";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Bristol Myers Squibb" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Bristol Myers Squibb" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BMY.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Bristol Myers Squibb" LIMIT 10;

-- BNY Mellon
DROP TABLE IF EXISTS "HistoricalStockData"."BNY Mellon";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."BNY Mellon" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."BNY Mellon" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BNY.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."BNY Mellon" LIMIT 10;

-- Broadridge Financial Solutions
DROP TABLE IF EXISTS "HistoricalStockData"."Broadridge Financial Solutions";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Broadridge Financial Solutions" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Broadridge Financial Solutions" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BR.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Broadridge Financial Solutions" LIMIT 10;

-- Berkshire Hathaway Inc_classB
DROP TABLE IF EXISTS "HistoricalStockData"."Berkshire Hathaway Inc_classB";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Berkshire Hathaway Inc_classB" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Berkshire Hathaway Inc_classB" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BRK-B.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Berkshire Hathaway Inc_classB" LIMIT 10;

-- Brown & Brown
DROP TABLE IF EXISTS "HistoricalStockData"."Brown & Brown";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Brown & Brown" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Brown & Brown" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BRO.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Brown & Brown" LIMIT 10;

-- Boston Scientific
DROP TABLE IF EXISTS "HistoricalStockData"."Boston Scientific";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Boston Scientific" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Boston Scientific" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BSX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Boston Scientific" LIMIT 10;

-- Blackstone
DROP TABLE IF EXISTS "HistoricalStockData"."Blackstone";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Blackstone" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Blackstone" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Blackstone" LIMIT 10;

-- BXP, Inc.
DROP TABLE IF EXISTS "HistoricalStockData"."BXP, Inc.";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."BXP, Inc." (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."BXP, Inc." FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."BXP, Inc." LIMIT 10;

-- BXP, Inc.
DROP TABLE IF EXISTS "HistoricalStockData"."BXP, Inc.";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."BXP, Inc." (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."BXP, Inc." FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\BX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."BXP, Inc." LIMIT 10;

-- Citigroup
DROP TABLE IF EXISTS "HistoricalStockData"."Citigroup";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Citigroup" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Citigroup" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\C.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Citigroup" LIMIT 10;

-- Carrier Global
DROP TABLE IF EXISTS "HistoricalStockData"."Carrier Global";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Carrier Global" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Carrier Global" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CARR.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Carrier Global" LIMIT 10;

-- Chubb Limited
DROP TABLE IF EXISTS "HistoricalStockData"."Chubb Limited";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Chubb Limited" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Chubb Limited" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CB.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Chubb Limited" LIMIT 10;

-- Cboe Global Markets
DROP TABLE IF EXISTS "HistoricalStockData"."Cboe Global Markets";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Cboe Global Markets" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Cboe Global Markets" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CBOE.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Cboe Global Markets" LIMIT 10;

-- CBRE Groups
DROP TABLE IF EXISTS "HistoricalStockData"."CBRE Groups";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CBRE Groups" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CBRE Groups" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CBRE.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CBRE Groups" LIMIT 10;

-- CBRE Groups
DROP TABLE IF EXISTS "HistoricalStockData"."CBRE Groups";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CBRE Groups" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CBRE Groups" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CBRE.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CBRE Groups" LIMIT 10;

-- Carnival Corporation
DROP TABLE IF EXISTS "HistoricalStockData"."Carnival Corporation";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Carnival Corporation" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Carnival Corporation" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CCL.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Carnival Corporation" LIMIT 10;

-- Cadence Design Systems
DROP TABLE IF EXISTS "HistoricalStockData"."Cadence Design Systems";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Cadence Design Systems" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Cadence Design Systems" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CDNS.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Cadence Design Systems" LIMIT 10;

-- CDW Corporation
DROP TABLE IF EXISTS "HistoricalStockData"."CDW Corporation";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CDW Corporation" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CDW Corporation" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CDW.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CDW Corporation" LIMIT 10;

-- Constellation Energy
DROP TABLE IF EXISTS "HistoricalStockData"."Constellation Energy";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Constellation Energy" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Constellation Energy" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CEG.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Constellation Energy" LIMIT 10;

-- CF Industries
DROP TABLE IF EXISTS "HistoricalStockData"."CF Industries";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CF Industries" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CF Industries" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CF.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CF Industries" LIMIT 10;

-- Church & Dwight
DROP TABLE IF EXISTS "HistoricalStockData"."Church & Dwight";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Church & Dwight" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Church & Dwight" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CHD.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Church & Dwight" LIMIT 10;

-- C.H. Robinson
DROP TABLE IF EXISTS "HistoricalStockData"."C.H. Robinson";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."C.H. Robinson" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."C.H. Robinson" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CHRW.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."C.H. Robinson" LIMIT 10;

-- Charter Communications
DROP TABLE IF EXISTS "HistoricalStockData"."Charter Communications";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Charter Communications" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Charter Communications" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CHRW.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Charter Communications" LIMIT 10;

-- Cigna
DROP TABLE IF EXISTS "HistoricalStockData"."Cigna";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Cigna" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Cigna" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CI.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Cigna" LIMIT 10;

-- Cincinnati Financial
DROP TABLE IF EXISTS "HistoricalStockData"."Cincinnati Financial";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Cincinnati Financial" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Cincinnati Financial" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CINF.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Cincinnati Financial" LIMIT 10;

-- Colgate-Palmolive
DROP TABLE IF EXISTS "HistoricalStockData"."Colgate-Palmolive";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Colgate-Palmolive" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Colgate-Palmolive" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CL.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Colgate-Palmolive" LIMIT 10;

-- Clorox
DROP TABLE IF EXISTS "HistoricalStockData"."Clorox";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Clorox" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Clorox" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CLX.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Clorox" LIMIT 10;

-- Comcast
DROP TABLE IF EXISTS "HistoricalStockData"."Comcast";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Comcast" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Comcast" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CMCSA.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Comcast" LIMIT 10;

-- CME Group
DROP TABLE IF EXISTS "HistoricalStockData"."CME Group";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CME Group" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CME Group" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CME.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CME Group" LIMIT 10;

-- Chipotle Mexican Grill
DROP TABLE IF EXISTS "HistoricalStockData"."Chipotle Mexican Grill";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Chipotle Mexican Grill" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Chipotle Mexican Grill" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CMG.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Chipotle Mexican Grill" LIMIT 10;

-- Cummins
DROP TABLE IF EXISTS "HistoricalStockData"."Cummins";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."Cummins" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."Cummins" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CMI.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."Cummins" LIMIT 10;

-- CMS Energy
DROP TABLE IF EXISTS "HistoricalStockData"."CMS Energy";
CREATE TABLE IF NOT EXISTS "HistoricalStockData"."CMS Energy" (
  "Date" DATE PRIMARY KEY,
    "Price" NUMERIC,
    "Close" NUMERIC,
    "High" NUMERIC,
    "Low" NUMERIC,
    "Open" NUMERIC
);

COPY "HistoricalStockData"."CMS Energy" FROM 'D:\Projects2026\Tethys\Postgres SQL sCRIPTS\Datasets\CMS.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM "HistoricalStockData"."CMS Energy" LIMIT 10;


 
























