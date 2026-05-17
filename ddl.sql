-- ============================================================
-- Geo-Spatial Disaster Relief & Supply Chain Optimizer
-- DDL Script (Milestone 4)
-- Database: disaster_relief_db
-- ============================================================

DROP DATABASE IF EXISTS disaster_relief_db;
CREATE DATABASE disaster_relief_db;
USE disaster_relief_db;

-- ============================================================
-- 1. Users
-- ============================================================
CREATE TABLE Users (
    user_id         INT AUTO_INCREMENT PRIMARY KEY,
    username        VARCHAR(50)   NOT NULL UNIQUE,
    email           VARCHAR(100)  NOT NULL UNIQUE,
    password_hash   VARCHAR(255)  NOT NULL,
    role            ENUM('Admin', 'Coordinator', 'Driver', 'Viewer') NOT NULL,
    last_login      TIMESTAMP     NULL DEFAULT NULL,
    created_at      TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 2. Warehouses
-- ============================================================
CREATE TABLE Warehouses (
    warehouse_id    INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(100)  NOT NULL UNIQUE,
    location        VARCHAR(200)  NOT NULL,
    latitude        DECIMAL(9,6)  NOT NULL,
    longitude       DECIMAL(9,6)  NOT NULL,
    capacity_kg     DECIMAL(10,2) NOT NULL CHECK (capacity_kg > 0),
    contact_person  VARCHAR(100)  DEFAULT NULL,
    is_active       BOOLEAN       NOT NULL DEFAULT TRUE
);

-- ============================================================
-- 3. Disaster_Zones
-- ============================================================
CREATE TABLE Disaster_Zones (
    zone_id             INT AUTO_INCREMENT PRIMARY KEY,
    name                VARCHAR(100)  NOT NULL,
    description         TEXT          DEFAULT NULL,
    severity_level      ENUM('Low', 'Medium', 'High', 'Critical') NOT NULL,
    latitude            DECIMAL(9,6)  NOT NULL,
    longitude           DECIMAL(9,6)  NOT NULL,
    population_affected INT           DEFAULT 0 CHECK (population_affected >= 0),
    is_active           BOOLEAN       NOT NULL DEFAULT TRUE,
    reported_by         INT           NOT NULL,
    logged_at           TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_zone_reported_by FOREIGN KEY (reported_by)
        REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- ============================================================
-- 4. Vehicles
-- ============================================================
CREATE TABLE Vehicles (
    vehicle_id      INT AUTO_INCREMENT PRIMARY KEY,
    license_plate   VARCHAR(20)   NOT NULL UNIQUE,
    type            VARCHAR(50)   NOT NULL,
    capacity_kg     DECIMAL(10,2) NOT NULL CHECK (capacity_kg > 0),
    status          ENUM('Available', 'InTransit', 'Maintenance') NOT NULL DEFAULT 'Available',
    assigned_driver INT           DEFAULT NULL,

    CONSTRAINT fk_vehicle_driver FOREIGN KEY (assigned_driver)
        REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE SET NULL
);

-- ============================================================
-- 5. Categories
-- ============================================================
CREATE TABLE Categories (
    category_id     INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(100)  NOT NULL UNIQUE,
    description     TEXT          DEFAULT NULL
);

-- ============================================================
-- 6. Items
-- ============================================================
CREATE TABLE Items (
    item_id             INT AUTO_INCREMENT PRIMARY KEY,
    name                VARCHAR(100)  NOT NULL UNIQUE,
    unit_of_measure     VARCHAR(20)   NOT NULL,
    weight_per_unit_kg  DECIMAL(8,3)  NOT NULL CHECK (weight_per_unit_kg > 0),
    category_id         INT           NOT NULL,

    CONSTRAINT fk_item_category FOREIGN KEY (category_id)
        REFERENCES Categories(category_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- ============================================================
-- 7. Warehouse_Inventory (M:N resolution)
-- ============================================================
CREATE TABLE Warehouse_Inventory (
    warehouse_id        INT NOT NULL,
    item_id             INT NOT NULL,
    quantity_in_stock   INT NOT NULL CHECK (quantity_in_stock >= 0),
    last_updated        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (warehouse_id, item_id),

    CONSTRAINT fk_inv_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES Warehouses(warehouse_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_inv_item FOREIGN KEY (item_id)
        REFERENCES Items(item_id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- ============================================================
-- 8. Dispatch_Logs
-- ============================================================
CREATE TABLE Dispatch_Logs (
    dispatch_id     INT AUTO_INCREMENT PRIMARY KEY,
    zone_id         INT NOT NULL,
    vehicle_id      INT NOT NULL,
    user_id         INT NOT NULL,
    priority        ENUM('Low', 'Medium', 'High', 'Critical') NOT NULL DEFAULT 'Medium',
    status          ENUM('Pending', 'EnRoute', 'Delivered', 'Failed') NOT NULL DEFAULT 'Pending',
    departure_time  TIMESTAMP NULL DEFAULT NULL,
    arrival_time    TIMESTAMP NULL DEFAULT NULL,
    notes           TEXT DEFAULT NULL,

    CONSTRAINT fk_dispatch_zone FOREIGN KEY (zone_id)
        REFERENCES Disaster_Zones(zone_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_dispatch_vehicle FOREIGN KEY (vehicle_id)
        REFERENCES Vehicles(vehicle_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_dispatch_user FOREIGN KEY (user_id)
        REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,

    CONSTRAINT chk_dispatch_times CHECK (arrival_time IS NULL OR departure_time IS NULL OR arrival_time > departure_time)
);

-- ============================================================
-- 9. Dispatch_Line_Items
-- ============================================================
CREATE TABLE Dispatch_Line_Items (
    line_item_id        INT AUTO_INCREMENT PRIMARY KEY,
    dispatch_id         INT NOT NULL,
    warehouse_id        INT NOT NULL,
    item_id             INT NOT NULL,
    quantity_dispatched  INT NOT NULL CHECK (quantity_dispatched > 0),

    CONSTRAINT fk_dli_dispatch FOREIGN KEY (dispatch_id)
        REFERENCES Dispatch_Logs(dispatch_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_dli_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES Warehouses(warehouse_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_dli_item FOREIGN KEY (item_id)
        REFERENCES Items(item_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- ============================================================
-- 10. Audit_Logs
-- ============================================================
CREATE TABLE Audit_Logs (
    audit_id        INT AUTO_INCREMENT PRIMARY KEY,
    table_name      VARCHAR(50)  NOT NULL,
    record_id       INT          NOT NULL,
    action          ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    changed_by      INT          DEFAULT NULL,
    changed_at      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    old_values      JSON         DEFAULT NULL,
    new_values      JSON         DEFAULT NULL,

    CONSTRAINT fk_audit_user FOREIGN KEY (changed_by)
        REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE SET NULL
);


-- ============================================================
-- INDEXES (Performance)
-- ============================================================

-- Foreign key indexes (prevent full table scans on JOINs)
CREATE INDEX idx_zone_reported_by      ON Disaster_Zones(reported_by);
CREATE INDEX idx_vehicle_driver        ON Vehicles(assigned_driver);
CREATE INDEX idx_item_category         ON Items(category_id);
CREATE INDEX idx_dispatch_zone         ON Dispatch_Logs(zone_id);
CREATE INDEX idx_dispatch_vehicle      ON Dispatch_Logs(vehicle_id);
CREATE INDEX idx_dispatch_user         ON Dispatch_Logs(user_id);
CREATE INDEX idx_dli_dispatch          ON Dispatch_Line_Items(dispatch_id);
CREATE INDEX idx_dli_warehouse         ON Dispatch_Line_Items(warehouse_id);
CREATE INDEX idx_dli_item              ON Dispatch_Line_Items(item_id);
CREATE INDEX idx_audit_changed_by      ON Audit_Logs(changed_by);

-- Spatial indexes for geospatial proximity queries
CREATE INDEX idx_warehouse_lat_lng     ON Warehouses(latitude, longitude);
CREATE INDEX idx_zone_lat_lng          ON Disaster_Zones(latitude, longitude);

-- Audit lookup indexes
CREATE INDEX idx_audit_table_record    ON Audit_Logs(table_name, record_id);
CREATE INDEX idx_audit_timestamp       ON Audit_Logs(changed_at);

-- Dispatch status filtering
CREATE INDEX idx_dispatch_status       ON Dispatch_Logs(status);


-- ============================================================
-- TRIGGER: Prevent Over-Dispatch (Insufficient Stock)
-- ============================================================
DELIMITER //

CREATE TRIGGER trg_check_stock_before_dispatch
BEFORE INSERT ON Dispatch_Line_Items
FOR EACH ROW
BEGIN
    DECLARE current_stock INT;

    SELECT quantity_in_stock INTO current_stock
    FROM Warehouse_Inventory
    WHERE warehouse_id = NEW.warehouse_id
      AND item_id = NEW.item_id;

    IF current_stock IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: Item not stocked in the specified warehouse.';
    END IF;

    IF NEW.quantity_dispatched > current_stock THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: Insufficient stock. Dispatch quantity exceeds available inventory.';
    END IF;

    -- Decrement inventory
    UPDATE Warehouse_Inventory
    SET quantity_in_stock = quantity_in_stock - NEW.quantity_dispatched
    WHERE warehouse_id = NEW.warehouse_id
      AND item_id = NEW.item_id;
END //

DELIMITER ;


-- ============================================================
-- TRIGGER: Audit Trail on Dispatch_Logs UPDATE
-- ============================================================
DELIMITER //

CREATE TRIGGER trg_audit_dispatch_update
AFTER UPDATE ON Dispatch_Logs
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Logs (table_name, record_id, action, changed_by, old_values, new_values)
    VALUES (
        'Dispatch_Logs',
        OLD.dispatch_id,
        'UPDATE',
        NEW.user_id,
        JSON_OBJECT(
            'status', OLD.status,
            'priority', OLD.priority,
            'departure_time', OLD.departure_time,
            'arrival_time', OLD.arrival_time
        ),
        JSON_OBJECT(
            'status', NEW.status,
            'priority', NEW.priority,
            'departure_time', NEW.departure_time,
            'arrival_time', NEW.arrival_time
        )
    );
END //

DELIMITER ;


-- ============================================================
-- TRIGGER: Audit Trail on Warehouse_Inventory UPDATE
-- ============================================================
DELIMITER //

CREATE TRIGGER trg_audit_inventory_update
AFTER UPDATE ON Warehouse_Inventory
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Logs (table_name, record_id, action, changed_by, old_values, new_values)
    VALUES (
        'Warehouse_Inventory',
        OLD.warehouse_id,
        'UPDATE',
        NULL,
        JSON_OBJECT(
            'warehouse_id', OLD.warehouse_id,
            'item_id', OLD.item_id,
            'quantity_in_stock', OLD.quantity_in_stock
        ),
        JSON_OBJECT(
            'warehouse_id', NEW.warehouse_id,
            'item_id', NEW.item_id,
            'quantity_in_stock', NEW.quantity_in_stock
        )
    );
END //

DELIMITER ;
