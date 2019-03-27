--
-- File generated with SQLiteStudio v3.2.1 on Tue Mar 26 22:27:21 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: __EFMigrationsHistory
CREATE TABLE "__EFMigrationsHistory" (
    "MigrationId" TEXT NOT NULL CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY,
    "ProductVersion" TEXT NOT NULL
);
INSERT INTO __EFMigrationsHistory (MigrationId, ProductVersion) VALUES ('20190327002506_functional', '2.1.4-rtm-31024');

-- Table: Assets
CREATE TABLE "Assets" (
    "AssetID" INTEGER NOT NULL CONSTRAINT "PK_Assets" PRIMARY KEY AUTOINCREMENT,
    "AssetName" TEXT NULL,
    "ControlInterval" INTEGER NOT NULL,
    "MaxImages" INTEGER NOT NULL,
    "MaxReadings" INTEGER NOT NULL,
    "ServerAddress" TEXT NULL,
    "DataAction" TEXT NULL,
    "ImageAction" TEXT NULL,
    "MethodAction" TEXT NULL,
    "ScheduleAction" TEXT NULL,
    "ReadAction" TEXT NULL
);
INSERT INTO Assets (AssetID, AssetName, ControlInterval, MaxImages, MaxReadings, ServerAddress, DataAction, ImageAction, MethodAction, ScheduleAction, ReadAction) VALUES (1, 'Daniel', 100, 5, 20, 'http://ehsankianifar-001-site1.itempurl.com/api/', 'TempData', 'TempData', 'TempData', 'TempData', 'TempData');

-- Table: DeviceReadActions
CREATE TABLE "DeviceReadActions" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_DeviceReadActions" PRIMARY KEY AUTOINCREMENT,
    "DeviceName" TEXT NULL,
    "ActionName" TEXT NULL
);

-- Table: InOuts
CREATE TABLE "InOuts" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_InOuts" PRIMARY KEY AUTOINCREMENT,
    "IoName" TEXT NULL,
    "IoType" TEXT NULL,
    "IoMode" INTEGER NOT NULL,
    "NModeReadInterval" INTEGER NOT NULL,
    "NModeSendInterval" INTEGER NOT NULL,
    "XModeReadInterval" INTEGER NOT NULL,
    "XModeSendInterval" INTEGER NOT NULL,
    "XModeExpiration" INTEGER NOT NULL,
    "Gain" REAL NOT NULL,
    "Offset" REAL NOT NULL,
    "IoAddress" INTEGER NOT NULL
);
INSERT INTO InOuts (Id, IoName, IoType, IoMode, NModeReadInterval, NModeSendInterval, XModeReadInterval, XModeSendInterval, XModeExpiration, Gain, "Offset", IoAddress) VALUES (1, 'Light', 'Tmd2771', 0, 10000, 20, 10000, 20, 20, 1.0, 0.0, 0);

-- Table: MethodLibs
CREATE TABLE "MethodLibs" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_MethodLibs" PRIMARY KEY AUTOINCREMENT,
    "MethodName" TEXT NULL,
    "InputDevice" TEXT NULL,
    "InputMethod" TEXT NULL,
    "InputArgumentOne" REAL NOT NULL,
    "InputArgumentTwo" REAL NOT NULL,
    "OutputDevice" TEXT NULL,
    "OutputMethod" TEXT NULL
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
