# Dataflow Description — Geo-Spatial Disaster Relief & Supply Chain Optimizer

## Data Entry Points

Data enters the system from three sources:

1. **Disaster zone registration**: When a disaster event is detected by NDMA, Pakistan Red Crescent Society (PRCS), or Edhi Foundation, a coordinator logs into the system and creates a new record in the `Disaster_Zones` table with the zone name, GPS coordinates, severity level, and estimated population affected. The `reported_by` FK links this entry to the authenticated user.

2. **Warehouse and inventory setup**: Administrators populate the `Warehouses` table with warehouse locations and capacities. The `Categories` and `Items` tables are populated with relief item classifications (medical, food, shelter, hygiene). Stock levels are recorded in `Warehouse_Inventory` as composite entries linking each warehouse to each item it holds, with current quantities.

3. **Vehicle fleet registration**: The `Vehicles` table is populated by administrators with vehicle details and current status. Drivers are linked via the `assigned_driver` FK to the `Users` table.

## Data Movement Through the Database

Once a disaster zone is active, the dispatch workflow moves data through the system as follows:

- A coordinator queries `Warehouse_Inventory` joined with `Warehouses` and `Disaster_Zones` to find the nearest warehouse with sufficient stock of needed items. PostGIS spatial indexes on latitude/longitude columns enable efficient proximity calculations.

- The coordinator creates a record in `Dispatch_Logs` linking the target zone, assigned vehicle, and authorizing user. The dispatch status starts as 'Pending'.

- For each item being sent, a row is inserted into `Dispatch_Line_Items` specifying the source warehouse, item, and quantity. A BEFORE INSERT trigger fires on this table, checking `Warehouse_Inventory` to confirm `quantity_dispatched` does not exceed `quantity_in_stock`. If it does, the transaction rolls back with an error signal.

- On successful insert, the trigger decrements `quantity_in_stock` in `Warehouse_Inventory` and updates `last_updated`.

- When the vehicle departs, the dispatch status is updated to 'EnRoute' and `departure_time` is recorded. The vehicle status in `Vehicles` changes to 'InTransit'.

- On arrival and confirmation by a field coordinator, the dispatch status becomes 'Delivered', `arrival_time` is recorded, and the vehicle status returns to 'Available'.

- Every UPDATE and DELETE on `Dispatch_Logs`, `Warehouse_Inventory`, and `Dispatch_Line_Items` fires an audit trigger that writes a row to `Audit_Logs` capturing the table name, affected record ID, action type, responsible user, and the full before/after state as JSON.

## Data Outputs

- **Dispatch reports**: JOIN queries across `Dispatch_Logs`, `Dispatch_Line_Items`, `Items`, `Warehouses`, and `Disaster_Zones` produce per-dispatch manifests showing what was sent, from where, to which zone, and current status.

- **Inventory dashboards**: Aggregation queries on `Warehouse_Inventory` joined with `Items` and `Categories` show current stock levels per warehouse, low-stock alerts, and category breakdowns.

- **Audit trail**: The `Audit_Logs` table provides a complete accountability ledger. Queries filtered by `table_name`, `changed_by`, or date range support forensic review and compliance reporting.

- **Spatial analytics**: Proximity queries using PostGIS functions on warehouse and zone coordinates identify optimal dispatch routes, coverage gaps, and warehouse placement recommendations.
