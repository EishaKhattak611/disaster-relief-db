# Normalization Document — Geo-Spatial Disaster Relief & Supply Chain Optimizer

## Overview

This document applies normalization formally (1NF → 2NF → 3NF) to every table in the schema and provides written justification for each step. Where a table already satisfies a normal form, the reasoning is documented.

---

## 1. Users

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** Every column stores a single atomic value. `user_id` is a unique primary key. There are no repeating groups or multi-valued attributes. The `role` column uses an ENUM (a single value per row), not a comma-separated list of roles.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** The primary key is a single column (`user_id`), so partial dependency is structurally impossible. Every non-key attribute (username, email, password_hash, role, last_login, created_at) depends fully on `user_id`.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** No transitive dependencies exist. No non-key attribute determines another non-key attribute. For example, `username` does not determine `role` — different users can share the same role. Each attribute depends directly and only on the primary key.

---

## 2. Warehouses

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All columns are atomic. `warehouse_id` is the primary key. Latitude and longitude are stored as separate DECIMAL columns, not as a combined string. The `name` column is UNIQUE, preventing duplicate warehouse entries.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`warehouse_id`), so partial dependency cannot occur.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** No transitive dependencies. `location` (address string) does not determine `latitude`/`longitude` in a functional sense because multiple coordinate pairs could map to the same descriptive location string, and the coordinates are the authoritative spatial data. `contact_person` and `capacity_kg` depend only on the warehouse itself.

---

## 3. Disaster_Zones

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All values are atomic. `severity_level` is an ENUM with a single value per row. `description` is a TEXT field storing a single block of text, not a list. `zone_id` is the unique primary key.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`zone_id`), so no partial dependencies are possible.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `reported_by` is a foreign key to Users, not a transitive dependency — it records which user registered the zone, a direct fact about the zone. `severity_level` does not determine `population_affected` or vice versa; both depend directly on the zone. No non-key attribute determines another.

---

## 4. Vehicles

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All columns are atomic. `license_plate` is UNIQUE. `status` is a single ENUM value. `vehicle_id` is the primary key.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`vehicle_id`). No partial dependency possible.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `assigned_driver` is a FK to Users — it records which driver is currently assigned, a direct property of the vehicle, not a transitive chain. `type` does not determine `capacity_kg` because vehicles of the same type can have different capacities (e.g., two different trucks). All non-key attributes depend only on the primary key.

---

## 5. Categories

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** Two atomic columns plus the primary key. `name` is UNIQUE. No repeating groups.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`category_id`).

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `description` depends only on `category_id`. With only two non-key attributes, there is no chain of non-key dependencies possible.

---

## 6. Items

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All columns are atomic. `category_id` is a single FK value, not a list of categories. `name` is UNIQUE. `item_id` is the primary key.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`item_id`). All attributes depend fully on it.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** One might question whether `category_id → name` creates a transitive path (item_id → category_id → category name). However, the category's `name` is stored in the Categories table, not in Items. The Items table stores only the FK reference. This is proper normalization — the category details live in one place (Categories), and Items references them. No transitive dependency exists within the Items table itself.

---

## 7. Warehouse_Inventory

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All values are atomic. The table uses a composite primary key (warehouse_id, item_id), and each combination appears at most once.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** This table has a composite primary key, so 2NF must be checked carefully. `quantity_in_stock` depends on the specific combination of warehouse AND item — not on either column alone. A warehouse does not have a single stock quantity (it stocks many items), and an item does not have a single stock quantity (it exists in many warehouses). Similarly, `last_updated` tracks when that specific warehouse-item pair was last modified. Both non-key attributes require the full composite key.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `quantity_in_stock` does not determine `last_updated` or vice versa — two different inventory records could have the same quantity but different timestamps, and the same timestamp but different quantities. No transitive dependency exists.

---

## 8. Dispatch_Logs

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All values are atomic. `priority` and `status` are single ENUM values. Timestamps are individual columns. No repeating groups — the items being dispatched are stored separately in Dispatch_Line_Items, not as a list within this table.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`dispatch_id`).

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** The three FK columns (zone_id, vehicle_id, user_id) each record a direct fact about the dispatch — which zone it goes to, which vehicle carries it, who authorized it. None of these determine each other: the same zone can receive dispatches via different vehicles by different users. `priority` and `status` depend on the dispatch event itself, not on the zone or vehicle. No transitive chain exists.

---

## 9. Dispatch_Line_Items

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All columns are atomic. Each row represents one item from one warehouse for one dispatch. `line_item_id` is the primary key. No repeating groups.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`line_item_id`). Note: although (dispatch_id, warehouse_id, item_id) could serve as a natural composite key, the surrogate key `line_item_id` is used. All attributes depend fully on the row identity.

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `quantity_dispatched` is the only non-key, non-FK attribute, and it depends directly on the specific line item (which dispatch, from which warehouse, which item, how many). The FK columns (dispatch_id, warehouse_id, item_id) do not determine each other — the same item can come from different warehouses in different dispatches. No transitive dependency.

---

## 10. Audit_Logs

### 1NF Check
- **Status:** Satisfies 1NF.
- **Justification:** All columns are atomic. `old_values` and `new_values` are JSON type — in MySQL 5.7+, JSON is a first-class atomic data type with its own validation, not a free-text string. `action` is a single ENUM value. `audit_id` is the primary key.

### 2NF Check
- **Status:** Satisfies 2NF.
- **Justification:** Single-column primary key (`audit_id`).

### 3NF Check
- **Status:** Satisfies 3NF.
- **Justification:** `table_name` and `record_id` together identify the audited row, but they do not form a determinant for other attributes — the same table_name + record_id combination can appear multiple times (each time the record is modified). `changed_by` records who made the change, a direct fact about the audit event. `old_values` and `new_values` capture the state at that specific moment. No non-key attribute determines another.

---

## Duplicate/Redundancy Check (Step 2)

All tables were reviewed for redundant or overlapping attributes:

- **No attribute appears in two tables** except as a deliberate FK reference (e.g., `warehouse_id` in Warehouse_Inventory references Warehouses).
- **Warehouse name and location** are not duplicated in any other table — Dispatch_Line_Items references warehouses by FK, not by copying their name.
- **Item details** (name, unit, weight) live only in the Items table. Dispatch_Line_Items stores only the FK and the quantity for that dispatch, not the item's name or weight.
- **User details** (username, email, role) are never duplicated into Dispatch_Logs or Audit_Logs — only the FK `user_id` / `changed_by` is stored.
- The **Categories** table was added to eliminate the previously missing reference for `category_id` in Items. Without it, category names would have had to be stored as strings directly in Items, violating normalization.

**Conclusion:** The schema is fully normalized to 3NF with no redundant data.
