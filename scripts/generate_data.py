"""
Milestone 3 — Synthetic Data Generator
Geo-Spatial Disaster Relief & Supply Chain Optimizer

Generates realistic Pakistani-context data for all 10 tables.
Exports one CSV per table into the ./csv/ directory.

Usage: python generate_data.py
Requirements: pip install faker
"""

import csv
import os
import random
import hashlib
from datetime import datetime, timedelta

# ── Try Faker, fall back to manual if not installed ──
try:
    from faker import Faker
    fake = Faker()
    HAS_FAKER = True
except ImportError:
    HAS_FAKER = False
    print("Warning: Faker not installed. Using built-in name lists.")

OUTPUT_DIR = "./csv"
os.makedirs(OUTPUT_DIR, exist_ok=True)

random.seed(42)

# ── Pakistani context data pools ──
PAKISTANI_FIRST_NAMES = [
    "Ahmed", "Fatima", "Hassan", "Ayesha", "Bilal", "Sara", "Usman", "Hina",
    "Ali", "Zara", "Faheem", "Eisha", "Imran", "Sana", "Kashif", "Nadia",
    "Tariq", "Mehreen", "Asif", "Rabia", "Junaid", "Amina", "Farhan", "Saima",
    "Zubair", "Mariam", "Shahid", "Khadija", "Waqar", "Sumaya", "Nabeel", "Aisha",
    "Kamran", "Bushra", "Rizwan", "Tahira", "Danish", "Lubna", "Faisal", "Noor",
    "Hamza", "Sidra", "Omer", "Aliya", "Adeel", "Samia", "Jawad", "Iqra",
    "Rehan", "Hafsa"
]

PAKISTANI_LAST_NAMES = [
    "Khan", "Ahmed", "Shah", "Khattak", "Afridi", "Malik", "Hussain", "Iqbal",
    "Bukhari", "Siddiqui", "Qureshi", "Durrani", "Yousafzai", "Bangash", "Wazir",
    "Shinwari", "Mohmand", "Orakzai", "Marwat", "Niazi", "Awan", "Abbasi",
    "Lodhi", "Baloch", "Mengal"
]

# Real Pakistani cities with approximate coordinates
WAREHOUSE_LOCATIONS = [
    ("Peshawar Central Warehouse", "University Road, Peshawar", 34.0151, 71.5249),
    ("Islamabad Relief Hub", "Sector G-11, Islamabad", 33.6844, 73.0479),
    ("Karachi Port Warehouse", "Kemari, Karachi", 24.8607, 67.0011),
    ("Lahore Distribution Center", "Multan Road, Lahore", 31.5204, 74.3587),
    ("Quetta Storage Facility", "Zarghoon Road, Quetta", 30.1798, 66.9750),
    ("Multan Relief Depot", "Bosan Road, Multan", 30.1575, 71.5249),
    ("Sukkur Emergency Store", "Military Road, Sukkur", 27.7052, 68.8574),
    ("Abbottabad Logistics Base", "Mansehra Road, Abbottabad", 34.1688, 73.2215),
    ("Hyderabad Supply Point", "Latifabad, Hyderabad", 25.3960, 68.3578),
    ("Swat Relief Warehouse", "Mingora Bypass, Swat", 34.7717, 72.3609),
    ("Dera Ismail Khan Depot", "Tank Road, DI Khan", 31.8626, 70.9019),
    ("Chitral Emergency Base", "Chitral Town Center", 35.8518, 71.7864),
]

# Real disaster-prone areas in Pakistan
DISASTER_ZONES_DATA = [
    ("Swat Valley Flood Zone", "Flash flooding in Swat river basin affecting multiple villages", "High", 35.2227, 72.4258, 45000),
    ("Balochistan Earthquake Zone", "Seismic activity near Awaran district", "Critical", 26.4553, 65.2310, 78000),
    ("Sindh Flood Plains", "Indus river overflow affecting agricultural areas in Sindh", "Critical", 26.8943, 68.5247, 120000),
    ("Chitral Landslide Area", "Monsoon triggered landslides blocking roads", "High", 35.8518, 71.7864, 15000),
    ("Dera Ghazi Khan Floods", "Riverine flooding from hill torrents", "High", 30.0489, 70.6455, 35000),
    ("South Waziristan Crisis", "Displacement from security operations", "Medium", 32.3046, 69.8722, 25000),
    ("Tharparkar Drought Zone", "Severe drought affecting Thar desert communities", "High", 24.7414, 69.8018, 95000),
    ("Nowshera Flood Zone", "Kabul river overflow affecting urban areas", "Critical", 34.0153, 71.9747, 60000),
    ("Muzaffarabad Earthquake Area", "Aftershock-prone zone from 2005 fault line", "Medium", 34.3708, 73.4712, 30000),
    ("Kohistan Glacier Lake Zone", "GLOF risk from glacial lake outbursts", "Low", 35.2100, 73.3500, 8000),
    ("Lasbela Coastal Flood Zone", "Cyclone and storm surge risk area", "Medium", 25.8400, 66.6600, 20000),
    ("Dera Ismail Khan Heat Zone", "Extreme heat wave affecting southern KP", "Medium", 31.8310, 70.9017, 42000),
    ("Shangla Landslide Belt", "Monsoon-triggered mass movement zone", "High", 34.8800, 72.6000, 12000),
    ("Jacobabad Extreme Heat Zone", "Record temperatures exceeding 50C", "High", 28.2769, 68.4514, 55000),
    ("Mansehra Earthquake Risk", "Seismic fault line through populated valleys", "Low", 34.3300, 73.2000, 18000),
]

VEHICLE_TYPES = ["Truck", "Pickup", "Ambulance", "Cargo Van", "Tanker", "Flatbed", "Mini Truck"]

KP_PLATE_PREFIXES = ["LES", "PSH", "MRD", "ABT", "SWT", "DIR", "CHT"]
PUNJAB_PLATES = ["LEA", "LEB", "RWP", "FSD", "MUL", "GUJ"]
SINDH_PLATES = ["KHI", "HYD", "SKR"]
BALOCH_PLATES = ["QTA", "GWD"]

CATEGORIES_DATA = [
    ("Medical Supplies", "Medicines, first aid kits, surgical equipment, PPE"),
    ("Food Rations", "Non-perishable food items, canned goods, dry rations"),
    ("Clean Water", "Bottled water, water purification tablets, water tankers"),
    ("Shelter Materials", "Tents, tarpaulins, blankets, sleeping bags"),
    ("Hygiene Kits", "Soap, sanitizer, menstrual products, toothbrushes"),
    ("Baby & Child Care", "Baby food, diapers, formula, child medicine"),
    ("Clothing", "Emergency clothing, winter wear, shoes"),
    ("Communication Equipment", "Radios, satellite phones, batteries, chargers"),
]

ITEMS_DATA = [
    # (name, unit, weight_kg, category_index 1-based)
    ("Paracetamol 500mg Box", "box", 0.5, 1),
    ("First Aid Kit Standard", "kit", 2.0, 1),
    ("Surgical Mask Pack (50)", "pack", 0.3, 1),
    ("Bandage Roll 10cm", "roll", 0.15, 1),
    ("ORS Sachets Pack (20)", "pack", 0.4, 1),
    ("IV Drip Set", "set", 0.8, 1),
    ("Antiseptic Bottle 500ml", "bottle", 0.6, 1),

    ("Rice Bag 10kg", "bag", 10.0, 2),
    ("Flour Bag 10kg", "bag", 10.0, 2),
    ("Cooking Oil 5L", "can", 4.6, 2),
    ("Lentils Pack 2kg", "pack", 2.0, 2),
    ("Canned Beans 400g", "can", 0.45, 2),
    ("Sugar Pack 2kg", "pack", 2.0, 2),
    ("Tea Pack 500g", "pack", 0.5, 2),
    ("Salt Pack 1kg", "pack", 1.0, 2),
    ("Biscuit Tin 2kg", "tin", 2.1, 2),

    ("Water Bottle 1.5L", "bottle", 1.5, 3),
    ("Water Purification Tablets (100)", "pack", 0.1, 3),
    ("Water Jerry Can 20L", "can", 0.8, 3),
    ("Water Filter Portable", "unit", 1.2, 3),

    ("Family Tent 4-Person", "tent", 15.0, 4),
    ("Tarpaulin Sheet 4x6m", "sheet", 3.5, 4),
    ("Wool Blanket", "blanket", 2.0, 4),
    ("Sleeping Bag Standard", "bag", 1.8, 4),
    ("Ground Mat Roll", "roll", 1.5, 4),

    ("Hygiene Kit Family", "kit", 3.0, 5),
    ("Soap Bar Pack (10)", "pack", 1.2, 5),
    ("Hand Sanitizer 500ml", "bottle", 0.55, 5),
    ("Menstrual Pad Pack (20)", "pack", 0.3, 5),
    ("Toothbrush Pack (5)", "pack", 0.1, 5),

    ("Baby Formula 400g", "tin", 0.45, 6),
    ("Diaper Pack Newborn (30)", "pack", 1.5, 6),
    ("Baby Food Cereal 250g", "pack", 0.28, 6),
    ("Child Paracetamol Syrup", "bottle", 0.2, 6),

    ("Emergency Blanket Clothing Set", "set", 2.5, 7),
    ("Winter Jacket Adult", "piece", 1.2, 7),
    ("Rubber Boots Pair", "pair", 1.8, 7),
    ("Child Clothing Set", "set", 0.8, 7),

    ("Handheld Radio", "unit", 0.35, 8),
    ("Battery Pack AA (20)", "pack", 0.6, 8),
    ("Solar Charger 10W", "unit", 0.4, 8),
    ("Emergency Flashlight", "unit", 0.25, 8),
]


def generate_name():
    first = random.choice(PAKISTANI_FIRST_NAMES)
    last = random.choice(PAKISTANI_LAST_NAMES)
    return first, last


def generate_plate():
    pool = KP_PLATE_PREFIXES + PUNJAB_PLATES + SINDH_PLATES + BALOCH_PLATES
    prefix = random.choice(pool)
    num = random.randint(100, 9999)
    return f"{prefix}-{num}"


def hash_password(plain):
    return hashlib.sha256(plain.encode()).hexdigest()


def random_ts(start_str="2025-06-01", end_str="2026-05-15"):
    start = datetime.strptime(start_str, "%Y-%m-%d")
    end = datetime.strptime(end_str, "%Y-%m-%d")
    delta = end - start
    random_days = random.randint(0, delta.days)
    random_secs = random.randint(0, 86399)
    return start + timedelta(days=random_days, seconds=random_secs)


def write_csv(filename, headers, rows):
    path = os.path.join(OUTPUT_DIR, filename)
    with open(path, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(rows)
    print(f"  -> {filename}: {len(rows)} rows")


# ═══════════════════════════════════════════════════════════════
# GENERATE DATA
# ═══════════════════════════════════════════════════════════════
print("Generating synthetic data...\n")

# ── 1. Users (60 rows) ──
users = []
used_usernames = set()
roles = ["Admin"] * 5 + ["Coordinator"] * 20 + ["Driver"] * 25 + ["Viewer"] * 10

for i in range(1, 61):
    first, last = generate_name()
    base_username = f"{first.lower()}.{last.lower()}"
    username = base_username
    counter = 1
    while username in used_usernames:
        username = f"{base_username}{counter}"
        counter += 1
    used_usernames.add(username)

    email = f"{username}@relief.pk"
    pwd = hash_password(f"pass_{username}")
    role = roles[i - 1] if i - 1 < len(roles) else random.choice(["Coordinator", "Driver"])
    login = random_ts().strftime("%Y-%m-%d %H:%M:%S") if random.random() > 0.2 else ""
    created = random_ts("2024-01-01", "2025-12-31").strftime("%Y-%m-%d %H:%M:%S")

    users.append([i, username, email, pwd, role, login, created])

write_csv("users.csv",
          ["user_id", "username", "email", "password_hash", "role", "last_login", "created_at"],
          users)


# ── 2. Warehouses (12 rows) ──
warehouses = []
for i, (name, loc, lat, lng) in enumerate(WAREHOUSE_LOCATIONS, 1):
    cap = round(random.uniform(5000, 50000), 2)
    contact_first, contact_last = generate_name()
    contact = f"{contact_first} {contact_last}"
    active = 1 if random.random() > 0.1 else 0
    warehouses.append([i, name, loc, lat, lng, cap, contact, active])

write_csv("warehouses.csv",
          ["warehouse_id", "name", "location", "latitude", "longitude", "capacity_kg", "contact_person", "is_active"],
          warehouses)


# ── 3. Disaster_Zones (15 rows) ──
admin_and_coord_ids = [u[0] for u in users if u[4] in ("Admin", "Coordinator")]
zones = []
for i, (name, desc, sev, lat, lng, pop) in enumerate(DISASTER_ZONES_DATA, 1):
    reporter = random.choice(admin_and_coord_ids)
    active = 1 if random.random() > 0.15 else 0
    logged = random_ts("2025-07-01", "2026-05-10").strftime("%Y-%m-%d %H:%M:%S")
    zones.append([i, name, desc, sev, lat, lng, pop, active, reporter, logged])

write_csv("disaster_zones.csv",
          ["zone_id", "name", "description", "severity_level", "latitude", "longitude",
           "population_affected", "is_active", "reported_by", "logged_at"],
          zones)


# ── 4. Vehicles (50 rows) ──
driver_ids = [u[0] for u in users if u[4] == "Driver"]
vehicles = []
used_plates = set()
for i in range(1, 51):
    plate = generate_plate()
    while plate in used_plates:
        plate = generate_plate()
    used_plates.add(plate)

    vtype = random.choice(VEHICLE_TYPES)
    cap = round(random.uniform(500, 15000), 2)
    status = random.choices(["Available", "InTransit", "Maintenance"], weights=[60, 25, 15])[0]
    driver = random.choice(driver_ids) if status != "Maintenance" and random.random() > 0.3 else ""
    vehicles.append([i, plate, vtype, cap, status, driver])

write_csv("vehicles.csv",
          ["vehicle_id", "license_plate", "type", "capacity_kg", "status", "assigned_driver"],
          vehicles)


# ── 5. Categories (8 rows) ──
categories = []
for i, (name, desc) in enumerate(CATEGORIES_DATA, 1):
    categories.append([i, name, desc])

write_csv("categories.csv",
          ["category_id", "name", "description"],
          categories)


# ── 6. Items (42 rows) ──
items = []
for i, (name, unit, weight, cat_id) in enumerate(ITEMS_DATA, 1):
    items.append([i, name, unit, weight, cat_id])

write_csv("items.csv",
          ["item_id", "name", "unit_of_measure", "weight_per_unit_kg", "category_id"],
          items)


# ── 7. Warehouse_Inventory (~ 200+ rows) ──
inventory = []
for wh in warehouses:
    wh_id = wh[0]
    # Each warehouse stocks 15-30 random items
    num_items = random.randint(15, 30)
    stocked_items = random.sample(range(1, len(items) + 1), min(num_items, len(items)))
    for item_id in stocked_items:
        qty = random.randint(20, 500)
        updated = random_ts("2026-01-01", "2026-05-15").strftime("%Y-%m-%d %H:%M:%S")
        inventory.append([wh_id, item_id, qty, updated])

write_csv("warehouse_inventory.csv",
          ["warehouse_id", "item_id", "quantity_in_stock", "last_updated"],
          inventory)


# ── 8. Dispatch_Logs (80 rows) ──
available_vehicles = [v[0] for v in vehicles if v[4] != "Maintenance"]
coord_ids = [u[0] for u in users if u[4] in ("Admin", "Coordinator")]
dispatches = []

for i in range(1, 81):
    zone_id = random.randint(1, len(zones))
    vehicle_id = random.choice(available_vehicles)
    user_id = random.choice(coord_ids)
    priority = random.choices(["Low", "Medium", "High", "Critical"], weights=[10, 35, 35, 20])[0]

    # Status distribution
    status = random.choices(["Pending", "EnRoute", "Delivered", "Failed"], weights=[15, 20, 55, 10])[0]

    dep_time = random_ts("2025-08-01", "2026-05-10")
    dep_str = dep_time.strftime("%Y-%m-%d %H:%M:%S")

    if status in ("Delivered", "Failed"):
        arr_time = dep_time + timedelta(hours=random.randint(2, 48))
        arr_str = arr_time.strftime("%Y-%m-%d %H:%M:%S")
    elif status == "EnRoute":
        arr_str = ""
    else:
        dep_str = ""
        arr_str = ""

    notes_pool = [
        "Urgent medical supplies needed",
        "Road partially blocked, alternate route taken",
        "Coordinating with PRCS field team",
        "Priority dispatch per NDMA directive",
        "Edhi ground team awaiting delivery",
        "Weather delay expected",
        "Second shipment to this zone",
        "Contains baby supplies and medicine",
        "Flood water receding, road accessible",
        "Military escort arranged for convoy",
        "",
    ]
    note = random.choice(notes_pool)

    dispatches.append([i, zone_id, vehicle_id, user_id, priority, status, dep_str, arr_str, note])

write_csv("dispatch_logs.csv",
          ["dispatch_id", "zone_id", "vehicle_id", "user_id", "priority", "status",
           "departure_time", "arrival_time", "notes"],
          dispatches)


# ── 9. Dispatch_Line_Items (200 rows) ──
line_items = []
line_id = 1
for d in dispatches:
    dispatch_id = d[0]
    # Each dispatch has 1-5 line items
    num_lines = random.randint(1, 5)
    used_combos = set()

    for _ in range(num_lines):
        wh_id = random.choice([w[0] for w in warehouses])
        item_id = random.randint(1, len(items))
        combo = (wh_id, item_id)
        if combo in used_combos:
            continue
        used_combos.add(combo)

        qty = random.randint(5, 100)
        line_items.append([line_id, dispatch_id, wh_id, item_id, qty])
        line_id += 1

write_csv("dispatch_line_items.csv",
          ["line_item_id", "dispatch_id", "warehouse_id", "item_id", "quantity_dispatched"],
          line_items)


# ── 10. Audit_Logs (100 rows) ──
audit_tables = ["Dispatch_Logs", "Warehouse_Inventory", "Dispatch_Line_Items", "Disaster_Zones", "Vehicles"]
audit_actions = ["INSERT", "UPDATE", "DELETE"]
audits = []

for i in range(1, 101):
    tbl = random.choice(audit_tables)
    rec_id = random.randint(1, 80)
    action = random.choices(audit_actions, weights=[30, 55, 15])[0]
    changer = random.choice(coord_ids)
    ts = random_ts("2025-08-01", "2026-05-15").strftime("%Y-%m-%d %H:%M:%S")

    if action == "INSERT":
        old_val = ""
        new_val = '{"status": "Pending", "priority": "Medium"}'
    elif action == "UPDATE":
        old_val = '{"status": "Pending"}'
        new_val = '{"status": "EnRoute"}'
    else:
        old_val = '{"status": "Failed", "notes": "Cancelled"}'
        new_val = ""

    audits.append([i, tbl, rec_id, action, changer, ts, old_val, new_val])

write_csv("audit_logs.csv",
          ["audit_id", "table_name", "record_id", "action", "changed_by", "changed_at", "old_values", "new_values"],
          audits)


print(f"\nDone! All CSV files written to {OUTPUT_DIR}/")
print(f"Total tables: 10")
total_rows = sum([len(users), len(warehouses), len(zones), len(vehicles),
                  len(categories), len(items), len(inventory), len(dispatches),
                  len(line_items), len(audits)])
print(f"Total rows across all tables: {total_rows}")
