-- ============================================================
-- Geo-Spatial Disaster Relief & Supply Chain Optimizer
-- DML Script (Milestone 5)
-- Database: disaster_relief_db
-- ============================================================
-- Prerequisites: Run ddl.sql first, then generate CSVs with generate_data.py
-- Adjust file paths below to match your local CSV directory.

USE disaster_relief_db;

-- ============================================================
-- STEP 1: DATA POPULATION (LOAD DATA INFILE)
-- ============================================================
-- NOTE: If LOAD DATA INFILE is disabled on your MySQL server,
-- replace each block with the INSERT statements from the CSVs.
-- Set your CSV directory path below:

SET @csv_path = '/path/to/your/csv/';

-- Disable FK checks during bulk load
SET FOREIGN_KEY_CHECKS = 0;

-- 1. Users
LOAD DATA INFILE '/path/to/csv/users.csv'
INTO TABLE Users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(user_id, username, email, password_hash, role, @last_login, created_at)
SET last_login = NULLIF(@last_login, '');

-- 2. Warehouses
LOAD DATA INFILE '/path/to/csv/warehouses.csv'
INTO TABLE Warehouses
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 3. Categories
LOAD DATA INFILE '/path/to/csv/categories.csv'
INTO TABLE Categories
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Items
LOAD DATA INFILE '/path/to/csv/items.csv'
INTO TABLE Items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 5. Disaster_Zones
LOAD DATA INFILE '/path/to/csv/disaster_zones.csv'
INTO TABLE Disaster_Zones
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 6. Vehicles
LOAD DATA INFILE '/path/to/csv/vehicles.csv'
INTO TABLE Vehicles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(vehicle_id, license_plate, type, capacity_kg, status, @assigned_driver)
SET assigned_driver = NULLIF(@assigned_driver, '');

-- 7. Warehouse_Inventory
LOAD DATA INFILE '/path/to/csv/warehouse_inventory.csv'
INTO TABLE Warehouse_Inventory
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 8. Dispatch_Logs (disable stock trigger during bulk load)
LOAD DATA INFILE '/path/to/csv/dispatch_logs.csv'
INTO TABLE Dispatch_Logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(dispatch_id, zone_id, vehicle_id, user_id, priority, status,
 @departure_time, @arrival_time, notes)
SET departure_time = NULLIF(@departure_time, ''),
    arrival_time   = NULLIF(@arrival_time, '');

-- 9. Dispatch_Line_Items
LOAD DATA INFILE '/path/to/csv/dispatch_line_items.csv'
INTO TABLE Dispatch_Line_Items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 10. Audit_Logs
LOAD DATA INFILE '/path/to/csv/audit_logs.csv'
INTO TABLE Audit_Logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(audit_id, table_name, record_id, action, changed_by, changed_at,
 @old_values, @new_values)
SET old_values = NULLIF(@old_values, ''),
    new_values = NULLIF(@new_values, '');

-- Re-enable FK checks
SET FOREIGN_KEY_CHECKS = 1;


-- ============================================================
-- STEP 2: DEMONSTRATE UPDATE & DELETE WITH WHERE
-- ============================================================

-- UPDATE: Mark a dispatch as Delivered and set arrival time
UPDATE Dispatch_Logs
SET status = 'Delivered',
    arrival_time = NOW()
WHERE dispatch_id = 1
  AND status = 'EnRoute';

-- UPDATE: Restock a warehouse item
UPDATE Warehouse_Inventory
SET quantity_in_stock = quantity_in_stock + 200
WHERE warehouse_id = 1
  AND item_id = 8;

-- DELETE: Remove a cancelled/failed dispatch and its line items
-- (Line items cascade due to ON DELETE CASCADE on FK)
DELETE FROM Dispatch_Logs
WHERE dispatch_id = 80
  AND status = 'Failed';


-- ============================================================
-- STEP 3: VALIDATION QUERIES
-- ============================================================

-- 3a. Row counts for every table
SELECT 'Users' AS table_name, COUNT(*) AS row_count FROM Users
UNION ALL
SELECT 'Warehouses', COUNT(*) FROM Warehouses
UNION ALL
SELECT 'Disaster_Zones', COUNT(*) FROM Disaster_Zones
UNION ALL
SELECT 'Vehicles', COUNT(*) FROM Vehicles
UNION ALL
SELECT 'Categories', COUNT(*) FROM Categories
UNION ALL
SELECT 'Items', COUNT(*) FROM Items
UNION ALL
SELECT 'Warehouse_Inventory', COUNT(*) FROM Warehouse_Inventory
UNION ALL
SELECT 'Dispatch_Logs', COUNT(*) FROM Dispatch_Logs
UNION ALL
SELECT 'Dispatch_Line_Items', COUNT(*) FROM Dispatch_Line_Items
UNION ALL
SELECT 'Audit_Logs', COUNT(*) FROM Audit_Logs;


-- 3b. NULL check on key columns
SELECT 'Users.username NULLs' AS check_name,
       COUNT(*) AS null_count
FROM Users WHERE username IS NULL

UNION ALL
SELECT 'Users.role NULLs',
       COUNT(*)
FROM Users WHERE role IS NULL

UNION ALL
SELECT 'Warehouses.name NULLs',
       COUNT(*)
FROM Warehouses WHERE name IS NULL

UNION ALL
SELECT 'Disaster_Zones.severity_level NULLs',
       COUNT(*)
FROM Disaster_Zones WHERE severity_level IS NULL

UNION ALL
SELECT 'Items.category_id NULLs',
       COUNT(*)
FROM Items WHERE category_id IS NULL

UNION ALL
SELECT 'Dispatch_Logs.zone_id NULLs',
       COUNT(*)
FROM Dispatch_Logs WHERE zone_id IS NULL

UNION ALL
SELECT 'Dispatch_Logs.vehicle_id NULLs',
       COUNT(*)
FROM Dispatch_Logs WHERE vehicle_id IS NULL

UNION ALL
SELECT 'Dispatch_Line_Items.dispatch_id NULLs',
       COUNT(*)
FROM Dispatch_Line_Items WHERE dispatch_id IS NULL;


-- 3c. Foreign Key integrity checks (JOIN-based)

-- Every Disaster_Zone.reported_by must exist in Users
SELECT 'DZ -> Users FK' AS fk_check,
       COUNT(*) AS orphan_count
FROM Disaster_Zones dz
LEFT JOIN Users u ON dz.reported_by = u.user_id
WHERE u.user_id IS NULL

UNION ALL

-- Every Dispatch_Logs.zone_id must exist in Disaster_Zones
SELECT 'Dispatch -> Zones FK',
       COUNT(*)
FROM Dispatch_Logs dl
LEFT JOIN Disaster_Zones dz ON dl.zone_id = dz.zone_id
WHERE dz.zone_id IS NULL

UNION ALL

-- Every Dispatch_Logs.vehicle_id must exist in Vehicles
SELECT 'Dispatch -> Vehicles FK',
       COUNT(*)
FROM Dispatch_Logs dl
LEFT JOIN Vehicles v ON dl.vehicle_id = v.vehicle_id
WHERE v.vehicle_id IS NULL

UNION ALL

-- Every Dispatch_Logs.user_id must exist in Users
SELECT 'Dispatch -> Users FK',
       COUNT(*)
FROM Dispatch_Logs dl
LEFT JOIN Users u ON dl.user_id = u.user_id
WHERE u.user_id IS NULL

UNION ALL

-- Every Items.category_id must exist in Categories
SELECT 'Items -> Categories FK',
       COUNT(*)
FROM Items i
LEFT JOIN Categories c ON i.category_id = c.category_id
WHERE c.category_id IS NULL

UNION ALL

-- Every Dispatch_Line_Items.dispatch_id must exist in Dispatch_Logs
SELECT 'DLI -> Dispatch FK',
       COUNT(*)
FROM Dispatch_Line_Items dli
LEFT JOIN Dispatch_Logs dl ON dli.dispatch_id = dl.dispatch_id
WHERE dl.dispatch_id IS NULL

UNION ALL

-- Every Warehouse_Inventory pair must reference valid warehouse and item
SELECT 'WI -> Warehouses FK',
       COUNT(*)
FROM Warehouse_Inventory wi
LEFT JOIN Warehouses w ON wi.warehouse_id = w.warehouse_id
WHERE w.warehouse_id IS NULL

UNION ALL

SELECT 'WI -> Items FK',
       COUNT(*)
FROM Warehouse_Inventory wi
LEFT JOIN Items i ON wi.item_id = i.item_id
WHERE i.item_id IS NULL;

-- Expected result: all orphan_count values should be 0
