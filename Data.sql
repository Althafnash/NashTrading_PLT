-- Active: 1779387795103@@127.0.0.1@5432@API_Database
-- CREATE DATABASE "API_Database";
-- ALTER SCHEMA public
-- RENAME TO NASA_API;

-- Near Earth Objects Table

DROP TABLE IF EXISTS nasa_api."Near Earth Objects";
CREATE TABLE nasa_api."Near Earth Objects"(
    "Name" VARCHAR(255),
    "id" NUMERIC(10,2) PRIMARY KEY,
    "Absolute Magnitude" DECIMAL(10, 2),
    "Estimated Diameter (km)" DECIMAL(10, 2),
    "Is Potentially Hazardous" BOOLEAN
);

INSERT INTO nasa_api."Near Earth Objects" ("Name", "id", "Absolute Magnitude", "Estimated Diameter (km)" ,"Is Potentially Hazardous")
VALUES
('433 Eros (A898 PA)', 200433.00, 10.3, 49.66, FALSE),
('719 Albert (A911 TB)', 2000719.00, 15.59, 4.52, FALSE),
('887 Alinda (A918 AA)', 2000887.00, 13.82, 10.23, FALSE),
('1036 Ganymed (A924 UB)', 2001036.00, 9.17, 87.10, FALSE),
('1221 Amor (1932 EA1)', 2001221.00, 17.37, 1.99, FALSE),
('1566 Icarus (1949 MA)', 2001566.00, 16.53, 2.93, TRUE),
('1580 Betulia (1950 KA)', 2001580.00, 14.54, 7.34, FALSE),
('1620 Geographos (1951 RA)', 2001620.00, 15.26, 5.27, TRUE),
('1627 Ivar (1929 SH)', 2001627.00, 12.79, 16.44, FALSE),
('1685 Toro (1948 OA)', 2001685.00, 14.28, 8.28, FALSE),
('1862 Apollo (1932 HA)', 2001862.00, 16.09, 3.59, FALSE),
('1863 Antinous (1948 EA)', 2001863.00, 15.35, 5.05, FALSE),
('1864 Daedalus (1971 FA)', 2001864.00, 14.83, 6.42, FALSE),
('1865 Cerberus (1971 UA)', 2001865.00, 16.77, 2.63, FALSE),
('1866 Sisyphus (1972 XA)', 2001866.00, 12.48, 18.96, FALSE),
('1915 Quetzalcoatl (1953 EA)', 2001915.00, 18.38, 1.25, FALSE),
('1916 Boreas (1953 RA)', 2001916.00, 14.93, 6.13, FALSE),
('1917 Cuyo (1968 AA)', 2001917.00, 14.38, 7.90, FALSE),
('1943 Anteros (1973 EC)', 2001943.00, 15.68, 4.34, FALSE),
('1980 Tezcatlipoca (1950 LA)', 2001980.00, 13.8, 10.32, FALSE)

SELECT * FROM nasa_api."Near Earth Objects";

-- CoronalMassEjectionAnalysis Table
DROP TABLE IF EXISTS nasa_api."CoronalMassEjectionAnalysis";

CREATE TABLE nasa_api."CoronalMassEjectionAnalysis" (
    "time21_5" TIMESTAMPTZ PRIMARY KEY,
    "latitude" NUMERIC(10,2),
    "longitude" NUMERIC(10,2),
    "halfAngle" NUMERIC(10,2),
    "speed" NUMERIC(10,2),
    "type" VARCHAR(255),
    "isMostAccurate" BOOLEAN,
    "associatedCMEID" VARCHAR(255),
    "note" VARCHAR(255),
    "associatedCMELink" VARCHAR(2048),
    "catalog" VARCHAR(255),
    "featureCode" VARCHAR(255),
    "dataLevel" INT,
    "measurementTechnique" VARCHAR(255),
    "imageType" VARCHAR(255),
    "tilt" VARCHAR(255),
    "minorHalfWidth" VARCHAR(255),
    "speedMeasuredAtHeight" VARCHAR(255),
    "submissionTime" TIMESTAMPTZ,
    "versionId" INT,
    "link" VARCHAR(2048)
);

INSERT INTO nasa_api."CoronalMassEjectionAnalysis" (
    "time21_5","latitude","longitude","halfAngle","speed",
    "type","isMostAccurate","associatedCMEID","note",
    "associatedCMELink","catalog","featureCode","dataLevel",
    "measurementTechnique","imageType","tilt","minorHalfWidth",
    "speedMeasuredAtHeight","submissionTime","versionId","link"
)
VALUES 
('2016-09-02T19:15Z',35.00,-87.00,27.00,218.00,'S',TRUE,'2016-09-02T06:18:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11209/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-02T14:43Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11210/-1'),
('2016-09-04T18:50Z',6.00,114.0,23.00,108.0,'S',TRUE,'2016-09-02T06:18:00-CME-001','Measurement done in SWPC cat using SOHO C2 and C3 and Cor2A','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11217/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-03T23:09Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11218/-1'),
('2016-09-05T08:25Z',-14.00,26.0,32.00,216.00,'S',TRUE,'2016-09-04T13:25:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11221/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-05T12:18Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/1124/-1'),
('2016-09-06T13:11Z',22.00,160.0,10.0,539.0,'C',TRUE,'2016-09-06T06:24:00-CME-001','Measured using C3 and STA.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11234/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-06T19:42Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11235/-1'),
('2016-09-06T14:18Z',-20.0,120.0,31.0,674.00,'C',TRUE,'2016-09-06T08:54:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11226/-1',
'M2M_CATALOG','NULL',1,'NULL','NULL','NULL','NULL','NULL','2016-09-06T15:43Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11233/-1'),
('2016-09-07T08:54Z',-24.0,80.0,24.00,317.00,'S',TRUE,'2016-09-06T23:30:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11237/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-07T12:53Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11238/-1'),
('2016-09-11T14:19Z',5.00,89.00,12.00,597.00,'C',TRUE,'2016-09-11T08:12:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11246/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-11T13:05Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11247/-1'),
('2016-09-15T04:24Z',-18.0,-122.00,43.00,722.00,'C',TRUE,'2016-09-14T23:36:00-CME-001','Measured with swpc_cat using C3 and STA Cor2 imagery.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11255/-1',
'M2M_CATALOG','NULL',1,'NULL','NULL','NULL','NULL','NULL','2016-09-15T13:22Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11256/-1'),
('2016-09-17T01:05Z',9.0,90.00,14.0,324.0,'S',TRUE,'2016-09-16T13:36:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11259/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-16T21:45Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11260/-1'),
('2016-09-17T03:50Z',-1.0,-68.0,17.0,301.0,'S',TRUE,'2016-09-16T15:36:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11261/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-16T22:03Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11262/-1'),
('2016-09-17T14:11Z',-15.0,-95.0,14.0,300.0,'S',TRUE,'2016-09-17T03:36:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11266/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-17T15:46Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11267/-1'),
('2016-09-17T19:53Z',5.0,99.0,12.0,436.0,'S',TRUE,'2016-09-17T12:18:00-CME-001','CME was measured in SWPC_CAT using both C2 and C3 imagery.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11264/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-17T20:33Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11268/-1'),
('2016-09-18T16:30Z',-6.0,-110.0,34.0,148.0,'S',TRUE,'2016-09-17T14:12:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11270/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-18T13:07Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11271/-1'),
('2016-09-18T14:35Z',13.0,-90.0,14.0,393.0,'S',TRUE,'016-09-18T06:12:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11272/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-18T13:23Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11273/-1'),
('2016-09-18T22:56Z',18.0,-83.0,10.0,221.0,'S',TRUE,'2016-09-18T07:36:00-CME-001','Hard to see in C3 and there were not many good frames in swpc_cat.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11274/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-18T14:40Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11275/-1'),
('2016-09-22T20:00Z',9.0,-104.0,17.0,398.0,'S',TRUE,'2016-09-22T11:12:00-CME-001','Measurement was done in SWPC CAT using C3 and Cor2A','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11287/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-23T00:44Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11289/-1'),
('2016-09-23T05:08Z',-21.0,-62.0,18.0,414.0,'S',TRUE,'2016-09-22T18:00:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11293/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-23T14:21Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11294/-1'),
('2016-09-23T14:08Z',16.0,122.0,17.0,268.0,'S',TRUE,'2016-09-23T01:36:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11291/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-23T13:35Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11292/-1'),
('2016-09-25T18:02Z',23.0,93.0,25.0,469.0,'S',TRUE,'2016-09-25T10:36:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11291/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-23T13:35Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11292/-1'),
('2016-09-27T09:30Z',-23.0,15.0,33.0,307.0,'S',TRUE,'2016-09-27T00:12:00-CME-001','NULL','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11303/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-27T13:25Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11304/-1'),
('2016-09-27T18:22Z',25.0,80.0,17.0,348.0,'S',TRUE,'2016-09-27T08:00:00-CME-001','Difficult to measure because leading edge was not entirely clear','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11312/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-27T23:36Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11313/-1'),
('2016-09-28T19:40Z',-64.0,70.0,38.0,270.0,'S',TRUE,'2016-09-28T06:12:00-CME-001','Measured using only C2 with a larger half angle than the previous measurement.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11315/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-28T21:53Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11320/-1'),
('2016-09-30T06:44Z',-14.0,80.0,26.0,380.0,'S',TRUE,'2016-09-29T20:36:00-CME-001','Able to observe field line lifting off in S14W80 of SDO 171 & 193 around 17:00Z.','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/11325/-1',
'M2M_CATALOG','NULL',0,'NULL','NULL','NULL','NULL','NULL','2016-09-30T01:43Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/11210/-1');

SELECT * FROM nasa_api."CoronalMassEjectionAnalysis";

DROP TABLE IF EXISTS nasa_api."CoronalMassEjectionAnalysis_activity";

CREATE TABLE nasa_api."CoronalMassEjectionAnalysis_activity"(
    "activityID" VARCHAR(255) PRIMARY KEY,
    "catalog" TEXT,
    "start_time" TIMESTAMP,
    "sourceLocation" TEXT,
    "submissionTime" TIMESTAMP,
    "versionId" INTEGER,
    "link" TEXT
);

INSERT INTO nasa_api."CoronalMassEjectionAnalysis_activity"(
    "activityID", "catalog", "start_time", "sourceLocation",
    "submissionTime","versionId", "link"
)
VALUES
('2026-05-01T15:28:00-CME-001','M2M_CATALOG','2026-05-01T15:28Z','S25E55','2026-05-04T15:53Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45943/-1'),
('2026-05-01T16:00:00-CME-001','M2M_CATALOG','2026-05-01T16:00Z','NULL','2026-05-02T00:45Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45951/-1'),
('2026-05-01T19:08:00-CME-001','M2M_CATALOG','2026-05-02T09:23Z','S20E30','2026-05-04T15:55Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45948/-1'),
('2026-05-02T09:23:00-CME-001','M2M_CATALOG','2026-05-02T09:23Z','NULL','2026-05-02T17:33Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45960/-1'),
('2026-05-02T11:24:00-CME-001','M2M_CATALOG','2026-05-02T11:24Z','NULL','2026-05-02T14:39Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45953/-1'),
('2026-05-02T11:38:00-CME-001','M2M_CATALOG','2026-05-02T11:38Z','NULL','2026-05-02T17:12Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45958/-1'),
('2026-05-02T13:08:00-CME-001','M2M_CATALOG','2026-05-02T13:08Z','NULL','2026-05-02T18:32Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45964/-1'),
('2026-05-02T13:48:00-CME-001','M2M_CATALOG','2026-05-02T13:48Z','NULL','2026-05-02T22:48Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45970/-1'),
('2026-05-02T19:00:00-CME-001','M2M_CATALOG','2026-05-02T19:00Z','N16W93','2026-05-04T15:57Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45966/-1'),
('2026-05-03T03:28:00-CME-001','M2M_CATALOG','2026-05-03T03:28Z','NULL','2026-05-04T15:58Z',2,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45972/-1'),
('2026-05-04T01:36:00-CME-001','M2M_CATALOG','2026-05-04T01:36Z','N14E68','2026-05-04T11:36Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45976/-1'),
('2026-05-04T21:24:00-CME-001','M2M_CATALOG','2026-05-04T21:24Z','S25E55','2026-05-05T01:06Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45984/-1'),
('2026-05-05T03:00:00-CME-001','M2M_CATALOG','2026-05-05T03:00Z','NULL','2026-05-05T11:50Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45987/-1'),
('2026-05-05T13:36:00-CME-001','M2M_CATALOG','2026-05-05T13:36Z','N18W100','2026-05-05T16:07Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45991/-1'),
('2026-05-05T23:30:00-CME-001','M2M_CATALOG','2026-05-05T23:30Z','NULL','2026-05-06T01:06Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/45999/-1'),
('2026-05-06T01:26:00-CME-001','M2M_CATALOG','2026-05-06T01:26Z','N23E50','2026-05-06T12:12Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46002/-1'),
('2026-05-06T10:36:00-CME-001','M2M_CATALOG','2026-05-06T10:36Z','NULL','2026-05-06T17:40Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46005/-1'),
('2026-05-06T17:48:00-CME-001','M2M_CATALOG','2026-05-06T17:48Z','NULL','2026-05-06T23:08Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46013/-1'),
('2026-05-06T22:00:00-CME-001','M2M_CATALOG','2026-05-06T22:00Z','NULL','2026-05-07T00:43Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46015/-1'),
('2026-05-07T01:26:00-CME-001','M2M_CATALOG','2026-05-07T01:26Z','N20E110','2026-05-07T11:51Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46018/-1'),
('2026-05-07T03:23:00-CME-001','M2M_CATALOG','2026-05-07T03:23Z','S23W93','2026-05-07T13:45Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46026/-1'),
('2026-05-07T05:45:00-CME-001','M2M_CATALOG','2026-05-07T05:45Z','NULL','2026-05-07T18:47Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46041/-1'),
('2026-05-07T06:24:00-CME-001','M2M_CATALOG','2026-05-07T06:24Z','NULL','2026-05-07T18:44Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46039/-1'),
('2026-05-07T07:24:00-CME-001','M2M_CATALOG','2026-05-07T07:24Z','NULL','2026-05-07T18:48Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46043/-1'),
('2026-05-07T15:23:00-CME-001','M2M_CATALOG','2026-05-07T15:23Z','NULL','2026-05-07T16:45Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46031/-1'),
('2026-05-07T18:36:00-CME-001','M2M_CATALOG','2026-05-07T18:36Z','NULL','2026-05-07T23:45Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46053/-1'),
('2026-05-07T21:12:00-CME-001','M2M_CATALOG','2026-05-07T21:12Z','NULL','2026-05-08T00:38Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46056/-1'),
('2026-05-07T23:36:00-CME-001','M2M_CATALOG','2026-05-07T23:36Z','NULL','2026-05-08T11:21Z',1,'https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CME/46060/-1');

SELECT * FROM nasa_api."CoronalMassEjectionAnalysis_activity";

DROP TABLE IF EXISTS nasa_api."CoronalMassEjectionAnalysis_Observation";

CREATE TABLE nasa_api."CoronalMassEjectionAnalysis_Observation"(
    "observationID" BIGSERIAL PRIMARY KEY,
    "activityID" VARCHAR(255),
    "display_name" TEXT NOT NULL
);

INSERT INTO nasa_api."CoronalMassEjectionAnalysis_Observation"(
    "activityID", "display_name"
)
VALUES
('2026-05-01T15:28:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[STEREO A: SECCHI/COR2],[GOES: CCOR-1]'),
('2026-05-01T16:00:00-CME-001', '[SOHO: LASCO/C2], [SOHO: LASCO/C2]'),
('2026-05-01T19:08:00-CME-001', '[STEREO A: SECCHI/COR2],[SOHO: LASCO/C2]'),
('2026-05-02T09:23:00-CME-001', '[STEREO A: SECCHI/COR2]'),
('2026-05-02T11:24:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[STEREO A: SECCHI/COR2],[GOES: CCOR-1]'),
('2026-05-02T11:38:00-CME-001', '[SOHO: LASCO/C2]'),
('2026-05-02T11:24:00-CME-001', '[SOHO: LASCO/C2],[STEREO A: SECCHI/COR2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-02T11:38:00-CME-001', '[SOHO: LASCO/C2],[STEREO A: SECCHI/COR2],[OHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-02T13:08:00-CME-001', '[STEREO A: SECCHI/COR2],[GOES: CCOR-1]'),
('2026-05-02T13:48:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-02T19:00:00-CME-001', '[SOHO: LASCO/C2]'),
('2026-05-03T03:28:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[STEREO A: SECCHI/COR2]'),
('2026-05-04T01:36:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[STEREO A: SECCHI/COR2],[GOES: CCOR-1]'),
('2026-05-04T21:24:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3]'),
('2026-05-05T03:00:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[STEREO A: SECCHI/COR2]'),
('2026-05-05T08:00:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3]'),
('2026-05-05T13:36:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-05T23:30:00-CME-001', '[GOES: CCOR-1]'),
('2026-05-06T01:26:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-06T10:36:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-06T17:48:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-06T22:00:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-07T01:26:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1],[STEREO A: SECCHI/COR2]'),
('2026-05-07T03:23:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1],[STEREO A: SECCHI/COR2]'),
('2026-05-07T05:45:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1]'),
('2026-05-07T15:23:00-CME-001', '[STEREO A: SECCHI/COR2],[GOES: CCOR-1]'),
('2026-05-07T18:36:00-CME-001', '[SOHO: LASCO/C2],[SOHO: LASCO/C3],[GOES: CCOR-1],[STEREO A: SECCHI/COR2]');

SELECT * FROM nasa_api."CoronalMassEjectionAnalysis_Observation";
DROP TABLE IF EXISTS nasa_api."CoronalMassEjectionAnalysis_Analysis";

CREATE TABLE nasa_api."CoronalMassEjectionAnalysis_Analysis"(
    "analysisID" BIGSERIAL PRIMARY KEY,
    "ActivityID" VARCHAR(255),
    "is_most_accurate" BOOLEAN,
    "time21_5" TIMESTAMPTZ,
    "latitude" NUMERIC(10,2),
    "longitude" NUMERIC(10,2),
    "halfAngle" NUMERIC(10,2),
    "speed" NUMERIC(10,2),
    "feature code" VARCHAR(255),
    "Image type" VARCHAR(255),
    "Mesurement Technique" VARCHAR(255),
    "Data Level" VARCHAR(255),
    "Speed measured at height" VARCHAR(255),
    "Submission Time" TIMESTAMPTZ,
    "Analysis Link" VARCHAR(2048)
);

INSERT INTO nasa_api."CoronalMassEjectionAnalysis_Analysis"(
    "ActivityID", "is_most_accurate", "time21_5", "latitude",
    "longitude", "halfAngle", "speed", "feature code",
    "Image type", "Mesurement Technique", "Data Level",
    "Speed measured at height", "Submission Time", "Analysis Link"
)
VALUES
('2026-05-01T15:28:00-CME-001',TRUE, '2026-05-01T21:29Z',-17.0,-61.0,23.0,515.0,'LE','running difference','SWPC_CAT',0,10.4,'2026-05-01T18:07Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45944/-1'),
('2026-05-01T16:00:00-CME-001',TRUE, '2026-05-02T04:23Z',NULL,27.0,31.0,292.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-02T00:47Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45945/-1'),
('2026-05-01T19:08:00-CME-001',TRUE, '2026-05-02T02:47Z',-14.0,-20.0,13.0,292.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-02T00:47Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45952/-1'),
('2026-05-01T19:08:00-CME-001',TRUE, '2026-05-02T02:47Z',-14.0,-20.0,13.0,411.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-02T17:34Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45949/-1'),
('2026-05-02T09:23:00-CME-001',TRUE, '2026-05-02T22:37Z',13.0,18.0,259.0,259.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-02T17:34Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45961/-1'),
('2026-05-02T11:24:00-CME-001',TRUE, '2026-05-02T17:18Z',16.0,92.0,20.0,603.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-02T14:45Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45957/-1'),
('2026-05-02T11:38:00-CME-001',TRUE, '2026-05-02T20:35Z',-20.0,156.0,31.0,409.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-02T17:13Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45963/-1'),
('2026-05-02T13:08:00-CME-001',TRUE, '2026-05-03T03:59Z',-20.0,138.0,17.0,248.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-02T18:33Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45965/-1'),
('2026-05-02T13:48:00-CME-001',TRUE, '2026-05-03T03:59Z',NULL,17.0,18.0,327.0,'LE','running difference','Plane-of-sky',0,9.0,'2026-05-02T22:50Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45971/-1'),
('2026-05-02T19:00:00-CME-001',TRUE, '2026-05-03T10:35Z',31.0,93.0,38.0,233.0,'LE','running difference','SWPC_CAT',0,4.0,'2026-05-02T22:10Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45967/-1'),
('2026-05-03T03:28:00-CME-001',TRUE, '2026-05-03T09:08Z',46.0,-168.0,10.0,581.0,'LE','running difference','SWPC_CAT',0,12.0,'2026-05-03T13:13Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45973/-1'),
('2026-05-04T01:36:00-CME-001',TRUE, '2026-05-04T09:30Z',-8.0,-68.0,31.0,481.0,'LE','running difference','SWPC_CAT',0,24.0,'2026-05-04T11:39Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45977/-1'),
('2026-05-04T21:24:00-CME-001',TRUE, '2026-05-04T21:24Z',NULL,51.0,27.0,263.0,'LE','running difference','Plane-of-sky',0,5.2,'2026-05-05T01:07Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45985/-1'),
('2026-05-05T03:00:00-CME-001',TRUE, '2026-05-05T09:35Z',21.0,-155.0,30.0,490.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-05T11:51Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45988/-1'),
('2026-05-05T08:00:00-CME-001',TRUE, '2026-05-05T14:43Z',20.0,-30.0,13.0,472.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-05T17:25Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45996/-1'),
('2026-05-05T13:36:00-CME-001',TRUE, '2026-05-06T02:24Z',39.0,100.0,26.0,277.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-05T16:08Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45992/-1'),
('2026-05-05T23:30:00-CME-001',TRUE, '2026-05-06T08:48Z',40.0,-75.0,24.0,302.0,'LE','running difference','SWPC_CAT',0,8.3,'2026-05-06T11:25Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46001/-1'),
('2026-05-05T23:30:00-CME-001[2]',TRUE, '2026-05-06T07:12Z',39.0,-75.0,11.0,378.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-06T01:07Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46000/-1'),
('2026-05-06T01:26:00-CME-001',TRUE, '2026-05-06T14:38Z',35.0,-55.0,24.0,255.0,'LE','running difference','SWPC_CAT',0,7.6,'2026-05-06T12:14Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46003/-1'),
('2026-05-06T10:36:00-CME-001',TRUE, '2026-05-06T17:34Z',23.0,-120.0,30.0,462.0,'LE','running difference','SWPC_CAT',0,12.0,'2026-05-06T15:53Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46000/-1'),
('2026-05-06T10:36:00-CME-001[2]',FALSE, '2026-05-06T16:37Z',28.0,-112.0,30.0,530.0,'LE','running difference','SWPC_CAT',0,8.1,'2026-05-06T12:49Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46006/-1'),
('2026-05-06T17:48:00-CME-001',TRUE, '2026-05-07T06:38Z',33.0,25.0,23.0,309.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-06T23:09Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46014/-1'),
('2026-05-06T22:00:00-CME-001',TRUE, '2026-05-07T05:39Z',-37.0,0.0,25.0,416.0,'LE','running difference','SWPC_CAT',0,NULL,'2026-05-07T00:46Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46017/-1'),
('2026-05-07T01:26:00-CME-001',TRUE, '2026-05-07T05:57Z',31.0,-112.0,32.0,798.0,'LE','running difference','SWPC_CAT',0,15.8,'2026-05-07T19:00Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46019/-1'),
('2026-05-07T01:26:00-CME-001[2]',TRUE, '2026-05-07T06:01Z',31.0,-112.0,43.0,795.0,'SH','running difference','SWPC_CAT',1,NULL,'2026-05-07T19:00Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46021/-1'),
('2026-05-07T01:26:00-CME-001[3]',TRUE, '2026-05-07T06:29Z',17.0,-123.0,50.0,737.0,'SH','running difference','SWPC_CAT',0,9.6,'2026-05-07T12:20Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46018/-1'),
('2026-05-07T03:23:00-CME-001',TRUE, '2026-05-07T13:33Z',-43.0,90.0,19.0,331.0,'LE','running difference','SWPC_CAT',0,7.7,'2026-05-07T13:46Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46027/-1'),
('2026-05-07T05:45:00-CME-001',TRUE, '2026-05-07T09:08Z',NULL,31.0,16.0,698.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-07T18:48Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46041/-1'),
('2026-05-07T06:24:00-CME-001',TRUE, '2026-05-07T14:51Z',NULL,7.0,11.0,422.0,'LE','running difference','Plane-of-sky',0,9.5,'2026-05-07T18:45Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46040/-1'),
('2026-05-07T07:24:00-CME-001',TRUE, '2026-05-07T16:15Z',32.0,19.0,412.0,412.0,'LE','running difference','Plane-of-sky',0,NULL,'2026-05-07T18:49Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46043/-1'),
('2026-05-07T15:23:00-CME-001',TRUE, '2026-05-07T19:15Z',26.0,-110.0,37.0,825.0,'LE','running difference','Plane-of-sky',0,14.7,'2026-05-07T18:49Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46043/-1'),
('2026-05-07T15:23:00-CME-001[2]',TRUE, '2026-05-07T18:59Z',7.0,-121.0,53.0,955.0,'SH','running difference','SWPC_CAT',0,12.3,'2026-05-07T22:14Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46050/-1'),
('2026-05-07T15:23:00-CME-001[3]',TRUE, '2026-05-07T19:42Z',26.0,-109.0,39.0,586.0,'LE','running difference','SWPC_CAT',0,6.2,'2026-05-07T17:00Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46032/-1'),
('2026-05-07T15:23:00-CME-001[4]',TRUE, '2026-05-07T19:42Z',3.0,-119.0,54.0,790.0,'LE','running difference','SWPC_CAT',0,8.3,'2026-05-07T17:00Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46034/-1'),
('2026-05-07T18:36:00-CME-001',TRUE, '2026-05-08T00:38Z',24.0,-110.0,17.0,568.0,'LE','running difference','SWPC_CAT',0,9.7,'2026-05-07T23:48Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46054/-1'),
('2026-05-07T21:12:00-CME-001',TRUE, '2026-05-08T09:53Z',NULL,29.0,10.0,259.0,'LE','running difference','SWPC_CAT',0,10.4,'2026-05-01T18:07Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/45944/-1'),
('2026-05-07T23:36:00-CME-001',TRUE, '2026-05-08T06:29Z',24.0,-116.0,19.0,522.0,'LE','running difference','SWPC_CAT',0,14.4,'2026-05-01T18:07Z','https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/CMEAnalysis/46061/-1');

SELECT * FROM nasa_api."coronalMassEjectionAnalysis_Analysis";
DROP TABLE IF EXISTS nasa_api."CoronalMassEjectionAnalysis_Model";

CREATE TABLE nasa_api."CoronalMassEjectionAnalysis_Model"(
    "modelID" BIGSERIAL PRIMARY KEY,
    "activityID" VARCHAR(255),
    "ModelCompletionTime" TIMESTAMPTZ,
    "au" NUMERIC(10,2),
    "IsEarthGB" BOOLEAN,
    "IsEarthMoinorImpact" BOOLEAN,
    "ModelLink" VARCHAR(2048),
    "CME_ID" VARCHAR(255)
);

INSERT INTO nasa_api."CoronalMassEjectionAnalysis_Model"(
    "activityID", "ModelCompletionTime", "au", "IsEarthGB",
    "IsEarthMoinorImpact", "ModelLink", "CME_ID"
)
VALUES
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001[2]','2026-05-01T18:52Z', 5.5,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45947/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T19:08:00-CME-001','2026-05-01T22:20Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45950/-1','2026-05-01T19:08:00-CME-001'),
('2026-05-02T11:38:00-CME-001','2026-05-02T17:30Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45963/-1','2026-05-02T11:38:00-CME-001'),
('2026-05-04T01:36:00-CME-001','2026-05-04T11:54Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45978/-1','2026-05-04T01:36:00-CME-001'),
('2026-05-05T03:00:00-CME-001','2026-05-05T12:06Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45989/-1','2026-05-05T03:00:00-CME-001'),
('2026-05-05T03:00:00-CME-001[2]','2026-05-05T12:30Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45990/-1','2026-05-05T03:00:00-CME-001'),
('2026-05-05T08:00:00-CME-001','2026-05-05T17:40Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45997/-1','2026-05-05T08:00:00-CME-001'),
('2026-05-05T13:36:00-CME-001','2026-05-05T16:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45993/-1','2026-05-05T13:36:00-CME-001'),
('2026-05-05T23:30:00-CME-001','2026-05-06T12:29Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/46004/-1','2026-05-05T23:30:00-CME-001,2026-05-06T01:26:00-CME-001'),
('2026-05-06T01:26:00-CME-001','2026-05-06T12:29Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/46006/-1','2026-05-05T23:30:00-CME-001,026-05-06T01:26:00-CME-001'),
('2026-05-06T10:36:00-CME-001[2]','2026-05-06T13:39Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/46008/-1','2026-05-06T10:36:00-CME-001'),
('2026-05-06T22:00:00-CME-001','2026-05-07T01:02Z',2.0,'True','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001'),
('2026-05-01T15:28:00-CME-001','2026-05-01T18:23Z',2.0,'False','False''https://webtools.ccmc.gsfc.nasa.gov/DONKI/view/WSA-ENLIL/45945/-1','2026-05-01T15:28:00-CME-001');
