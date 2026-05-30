-- ============================================================
-- Geo-Spatial Disaster Relief & Supply Chain Optimizer
-- DML Script — INSERT Statements (Milestone 5)
-- Auto-generated from CSV data
-- ============================================================

USE disaster_relief_db;

SET FOREIGN_KEY_CHECKS = 0;

-- ────────────────────────────────────────
-- Users
-- ────────────────────────────────────────
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (1, 'hamza.khattak', 'hamza.khattak@relief.pk', '0f92e400b773a60a8a0f521f0c6ccc1299fa376e7db1584622b75c3983232ab0', 'Admin', NULL, '2024-10-08 08:54:58');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (2, 'kashif.afridi', 'kashif.afridi@relief.pk', '6bfc47c4a37327129887bb8d7fe2f916a7c706e20caaedb9162801d020f7b516', 'Admin', '2026-05-13 19:51:22', '2024-03-30 21:29:57');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (3, 'khadija.ahmed', 'khadija.ahmed@relief.pk', '97198090a72d7e63e1b777c25aa7b6a8568f467d066ef84e3a71415b3315f5ce', 'Admin', NULL, '2024-08-11 08:28:15');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (4, 'kamran.niazi', 'kamran.niazi@relief.pk', '7d08116174022d17f3d9e3e08e1dc69bf705dba9647a8292e2b453b21ed86937', 'Admin', NULL, '2024-07-22 23:39:41');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (5, 'adeel.orakzai', 'adeel.orakzai@relief.pk', '149c1bb67c9834cd4023cf612dbf76760d29104ff98ad72acb2b5033e37c3923', 'Admin', '2026-01-16 21:27:16', '2024-10-11 00:14:11');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (6, 'rehan.malik', 'rehan.malik@relief.pk', 'cb6766d698e21effd8b81adfbb769044508135608c99f8b6d7b7fd95c2abf05e', 'Coordinator', '2025-11-22 10:07:01', '2024-06-08 07:50:21');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (7, 'rehan.qureshi', 'rehan.qureshi@relief.pk', '7b7a1ef8d5b74f514cd1c5078b404e5c500891bbb887c0c010de2684cdeef95b', 'Coordinator', NULL, '2025-01-24 03:31:16');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (8, 'farhan.durrani', 'farhan.durrani@relief.pk', '0a5d8521642b5ad60ed7311d924cce2dd709c7fd59906c107b38b7e76cc1a93c', 'Coordinator', '2025-06-23 16:43:37', '2025-07-03 04:32:41');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (9, 'zubair.shah', 'zubair.shah@relief.pk', '7153f7881caae9f9dc8325428a52f51ca10d3db82b052b0772f9c017c0d4ddb0', 'Coordinator', '2026-04-18 22:31:10', '2025-01-05 21:01:14');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (10, 'imran.lodhi', 'imran.lodhi@relief.pk', 'cac4a0cfa8d5e0de6d1b47fe4f59bc10118c3b0713485455b98799fff6acadb8', 'Coordinator', NULL, '2025-11-08 08:17:51');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (11, 'hafsa.siddiqui', 'hafsa.siddiqui@relief.pk', 'a2b5b11ac5dbaad62ef7913e559a4c718e5b4b4b67eaed7cce57192fab8add33', 'Coordinator', '2025-09-28 03:40:38', '2025-01-24 10:07:14');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (12, 'sumaya.awan', 'sumaya.awan@relief.pk', '75800f66af61596862241081981daf422b0d93cdd6a23476043e1e81b8f9f125', 'Coordinator', '2025-08-23 13:28:40', '2024-12-29 07:37:40');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (13, 'omer.bukhari', 'omer.bukhari@relief.pk', '5329e9c8160526b1e6e7295ace0c06e4b2ebe3fa1667f0adb26caaa8be67d005', 'Coordinator', '2026-04-28 02:35:58', '2025-09-15 23:07:07');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (14, 'faheem.orakzai', 'faheem.orakzai@relief.pk', '46efbde2c6a13b1a9805cf1656f121267de4fed9bc4f55d08ff266202ddcdc47', 'Coordinator', '2025-08-23 16:49:49', '2025-01-23 09:49:42');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (15, 'hamza.lodhi', 'hamza.lodhi@relief.pk', 'c0ef896073972172aaade40592c4005b836aa69e9166db590a397a9f5d743a94', 'Coordinator', '2025-11-14 02:02:11', '2024-08-22 01:10:07');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (16, 'junaid.yousafzai', 'junaid.yousafzai@relief.pk', '8eb12335955ab9860cc4138e97f49880c2a9344b4bc89ef66779260b65e27324', 'Coordinator', '2025-09-17 20:39:01', '2024-11-18 07:44:29');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (17, 'sidra.shinwari', 'sidra.shinwari@relief.pk', '8ff743d7a5d3d8e6f888a6592071aa3ec2495cab555890f88f5ad9f6db06f2b4', 'Coordinator', '2026-04-26 16:42:22', '2024-05-26 09:38:38');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (18, 'ali.iqbal', 'ali.iqbal@relief.pk', '0c211b05d541eb7e8d35b91c131426037661ca9426faf7034559800401dcce6b', 'Coordinator', '2026-03-03 09:33:58', '2025-08-21 15:35:55');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (19, 'lubna.yousafzai', 'lubna.yousafzai@relief.pk', '9faeb3196b85dc58ff7fbab0bcbf9af55bd55bc826b281f0ca84a7b7beaed13e', 'Coordinator', '2025-08-10 18:33:04', '2025-05-20 03:18:35');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (20, 'rehan.ahmed', 'rehan.ahmed@relief.pk', 'c7e2ef0c4c318701a23c5dfdc07e00975cbdd6a7a12f19d45f9fe8a18a39eedb', 'Coordinator', '2025-08-18 22:50:40', '2024-06-12 15:22:13');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (21, 'faisal.shah', 'faisal.shah@relief.pk', '39d9cf1e0adbb087bba4ad58a2eb92fd197d843305fdfa5bc5f274e1fc713c4f', 'Coordinator', '2026-04-02 17:02:28', '2025-06-25 09:09:13');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (22, 'tahira.khan', 'tahira.khan@relief.pk', '32d0131959a1e83064c6b864ee254ed25ec95fa06be281770acded751ac80f85', 'Coordinator', '2025-07-29 19:33:01', '2024-09-30 23:20:12');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (23, 'amina.khattak', 'amina.khattak@relief.pk', '20b26e75403678b695d81e3c7be83c3049353ef5295d3ddd7c2c618a4126af1a', 'Coordinator', '2025-08-20 16:31:10', '2024-01-04 09:35:22');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (24, 'kamran.mengal', 'kamran.mengal@relief.pk', '7dd36ede4c9fc878bb1778d27b8645890a12da224e6581aa89582004d671a064', 'Coordinator', NULL, '2024-04-18 22:45:59');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (25, 'rabia.awan', 'rabia.awan@relief.pk', 'd534da9098acc41b62d2abd76f144dff2b47186b02c1bedac4ed2e42ca539e6b', 'Coordinator', '2025-09-10 05:33:52', '2025-01-17 05:52:54');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (26, 'rizwan.mengal', 'rizwan.mengal@relief.pk', '6b8c6f8b64be2e8050a75a5bf3ef3b2d639d2cdad92c43f4447769e453446613', 'Driver', '2025-06-01 21:48:24', '2024-11-27 17:47:22');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (27, 'fatima.khattak', 'fatima.khattak@relief.pk', 'dadf03c8888681fe71f9e232ef504be1961f9fcc4751fa60796d83b565deee08', 'Driver', '2025-11-05 08:43:05', '2024-02-29 08:46:11');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (28, 'danish.shah', 'danish.shah@relief.pk', '551ee4fcc7535c6c78085f41de84fffceb9b5c004cce1bd697e2262738bf91eb', 'Driver', NULL, '2025-05-12 02:31:11');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (29, 'rehan.orakzai', 'rehan.orakzai@relief.pk', '6b9252a0c845b8209308a0aaaf9e4ebc0f53c8116eb8be21d8a588affa4ff072', 'Driver', '2025-08-05 17:18:16', '2025-07-16 06:00:43');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (30, 'tariq.mohmand', 'tariq.mohmand@relief.pk', 'b980f7a75e02166494088d1b03a1a84156217f533dd029c30e59f13f07a29d13', 'Driver', '2026-01-03 07:42:40', '2025-07-06 07:19:25');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (31, 'samia.siddiqui', 'samia.siddiqui@relief.pk', '14796b7fc6a1fb367bd76a72deefcea1cc420d58b9f580b8fc595fd4db4fa513', 'Driver', '2026-05-10 23:39:40', '2025-01-17 15:57:02');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (32, 'bushra.wazir', 'bushra.wazir@relief.pk', '32ecd665ae32e75897f5ccd5f8d537eff0f05b929d9f6e410e7076a59444eb40', 'Driver', NULL, '2024-08-18 02:19:52');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (33, 'amina.khan', 'amina.khan@relief.pk', 'f76498f8e475c07946b2cba8c009619ad8752062220026d151ac02edbaf35154', 'Driver', '2025-09-26 21:25:28', '2024-08-13 00:15:42');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (34, 'bilal.lodhi', 'bilal.lodhi@relief.pk', '52d48a333503cf227287d2b396b10537d1909cfd9161cddd5ee1eeff6354af4a', 'Driver', '2025-09-26 02:27:14', '2024-02-02 12:01:49');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (35, 'bilal.mohmand', 'bilal.mohmand@relief.pk', '6bc54bb78cfc8d082aef832fec298dba3cfc0e2849496f34ad8453ee37b30108', 'Driver', '2026-05-09 17:40:24', '2024-08-07 19:37:58');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (36, 'ali.baloch', 'ali.baloch@relief.pk', '7a80203bea6a1d15c86e3eb850a1c4c91a08b4fe3f4cfa78f09f329f9170a01f', 'Driver', '2026-03-20 20:58:45', '2025-04-29 08:50:50');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (37, 'nabeel.bangash', 'nabeel.bangash@relief.pk', 'c54a1fddb145f7512cecc42c8602e9487e8c03a313f337a7b7687a4ac2752c1b', 'Driver', NULL, '2024-04-09 23:59:34');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (38, 'khadija.durrani', 'khadija.durrani@relief.pk', '343471e15c20423a0acfab9010f9b0ffcb1dc52c9e711b7f66d87b6769f00fd2', 'Driver', '2026-01-26 01:58:20', '2025-11-20 23:47:29');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (39, 'sidra.khattak', 'sidra.khattak@relief.pk', 'd6a0ae7b9cc0030d4099391a8f15d79046177a958c98f423adcd1fecce49a82b', 'Driver', NULL, '2024-12-13 03:58:42');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (40, 'nadia.hussain', 'nadia.hussain@relief.pk', '3ae8bd5587c596e49fc15f2e19ac3666478b11aece18a1dea458b6f999438ccc', 'Driver', NULL, '2025-04-04 05:06:13');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (41, 'khadija.malik', 'khadija.malik@relief.pk', 'd575adf486f842ac52fd03f57571905bd5807ae3f67d57e3b8096adb98a88cbc', 'Driver', '2025-10-06 02:44:40', '2025-03-29 20:02:12');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (42, 'usman.ahmed', 'usman.ahmed@relief.pk', 'eb74c96a434e502da5a0c339ab2c62a515a42a8fe804d2ecf9523620589f5420', 'Driver', '2026-03-04 00:32:14', '2024-04-05 08:36:22');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (43, 'faheem.bangash', 'faheem.bangash@relief.pk', '1667e7210ff564ea534046b458c6aca4a7863e545670343a4e7e9e8455d0e89a', 'Driver', '2025-09-18 14:36:05', '2024-03-01 05:59:39');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (44, 'zubair.khan', 'zubair.khan@relief.pk', '0c35f5833ba122d9f8b6621284ff785d6b012687a2e3d2ab2955efff639dfc75', 'Driver', '2025-10-14 16:33:58', '2024-10-19 15:24:04');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (45, 'adeel.baloch', 'adeel.baloch@relief.pk', '4cc2b6cb1ca248d18602cc9daf13fd1676f7be31fae30ce2ec092c0a1950f645', 'Driver', '2026-03-12 17:43:08', '2024-06-07 06:54:50');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (46, 'asif.hussain', 'asif.hussain@relief.pk', 'a11b332532c9ee4836fa71163c0c3b113e755713b2f2a5c3b2ec10faad9dadec', 'Driver', '2026-03-24 19:44:26', '2024-03-03 11:25:04');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (47, 'ayesha.ahmed', 'ayesha.ahmed@relief.pk', '1b632ef01e2f8282177e2fcdaf5006fe67ccb9d778a9103fb51d7587561fdbce', 'Driver', '2026-02-13 19:20:15', '2024-06-10 02:04:15');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (48, 'kamran.shah', 'kamran.shah@relief.pk', 'b2d40994236a8a68ffed5cdacf8d6b5f9d5a81ebab4d49275caa08c17041c1cd', 'Driver', '2025-07-06 21:39:52', '2024-03-10 08:33:48');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (49, 'mariam.khattak', 'mariam.khattak@relief.pk', 'c76c1d176c9654751f10c261433698f06675938ddf5da2d69056077bbcea73d4', 'Driver', '2026-03-19 08:57:51', '2025-08-15 21:38:44');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (50, 'hassan.niazi', 'hassan.niazi@relief.pk', 'be1cbe12c1faadb49564119b1af1927b8589b5908a275c0d32fadab171ef6aa3', 'Driver', NULL, '2025-11-04 21:15:03');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (51, 'danish.mohmand', 'danish.mohmand@relief.pk', '0289d5328474e388dd628b5cb49f4d32ba8db3e05c0bc004845cfb7519ae62e9', 'Viewer', '2025-10-12 07:26:12', '2025-11-16 11:26:20');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (52, 'nadia.bukhari', 'nadia.bukhari@relief.pk', 'e8c2944a2714e97c36f74cf7cfc9a0d4f55fca0d6e39733b110b265eccb25e2b', 'Viewer', '2026-05-10 23:30:07', '2024-11-03 16:38:49');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (53, 'junaid.mengal', 'junaid.mengal@relief.pk', 'a6c0ce0b9c0791a76fbd533ad7917fd1e7acc748bf3722acf520332af08367a7', 'Viewer', '2025-06-05 16:41:08', '2025-09-28 20:29:52');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (54, 'usman.shah', 'usman.shah@relief.pk', 'e7fd0730810c61125ca3abf8bfd9c8db9f6446895ea703111977d8ea4d40a2c0', 'Viewer', '2026-02-15 09:39:20', '2024-05-15 12:42:25');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (55, 'bilal.iqbal', 'bilal.iqbal@relief.pk', '6a47edbc14bcddeb478aa8060767f9b03c15268a23a55671fa564440b66d36e0', 'Viewer', '2025-08-20 15:57:13', '2025-07-10 11:00:51');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (56, 'noor.awan', 'noor.awan@relief.pk', '80c35d9fe86d203b397d3dc0b1abf91e2e0dc5a055e9d6b6490f3e25432601f9', 'Viewer', '2026-05-08 20:11:32', '2024-11-02 03:46:17');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (57, 'ali.bukhari', 'ali.bukhari@relief.pk', 'f33dc9905ea5daab04b82a2eefc51744b10a5ecbb58f9cbf49574da29f63ae0b', 'Viewer', NULL, '2024-04-19 20:08:32');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (58, 'zara.bukhari', 'zara.bukhari@relief.pk', '550469e512b095e5479da8b60b45cf1b16c7cae6349ea2e6d7cdcc2707720eed', 'Viewer', '2025-09-16 12:29:02', '2024-07-27 23:05:30');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (59, 'tariq.mohmand1', 'tariq.mohmand1@relief.pk', 'bd68addd2a72953ef2291d7e88e1060f2a9d3f64447d989b87157fc639985f1e', 'Viewer', '2025-06-27 03:21:37', '2025-10-11 15:25:18');
INSERT INTO Users (user_id, username, email, password_hash, role, last_login, created_at) VALUES (60, 'mehreen.ahmed', 'mehreen.ahmed@relief.pk', '4f434dd3e8081582379a07ce27c16f3469e2a9090384e4fff84ba71d282ab19b', 'Viewer', NULL, '2024-05-13 23:11:47');
-- (60 rows)

-- ────────────────────────────────────────
-- Categories
-- ────────────────────────────────────────
INSERT INTO Categories (category_id, name, description) VALUES (1, 'Medical Supplies', 'Medicines, first aid kits, surgical equipment, PPE');
INSERT INTO Categories (category_id, name, description) VALUES (2, 'Food Rations', 'Non-perishable food items, canned goods, dry rations');
INSERT INTO Categories (category_id, name, description) VALUES (3, 'Clean Water', 'Bottled water, water purification tablets, water tankers');
INSERT INTO Categories (category_id, name, description) VALUES (4, 'Shelter Materials', 'Tents, tarpaulins, blankets, sleeping bags');
INSERT INTO Categories (category_id, name, description) VALUES (5, 'Hygiene Kits', 'Soap, sanitizer, menstrual products, toothbrushes');
INSERT INTO Categories (category_id, name, description) VALUES (6, 'Baby & Child Care', 'Baby food, diapers, formula, child medicine');
INSERT INTO Categories (category_id, name, description) VALUES (7, 'Clothing', 'Emergency clothing, winter wear, shoes');
INSERT INTO Categories (category_id, name, description) VALUES (8, 'Communication Equipment', 'Radios, satellite phones, batteries, chargers');
-- (8 rows)

-- ────────────────────────────────────────
-- Warehouses
-- ────────────────────────────────────────
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (1, 'Peshawar Central Warehouse', 'University Road, Peshawar', 34.0151, 71.5249, 49090.91, 'Faheem Baloch', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (2, 'Islamabad Relief Hub', 'Sector G-11, Islamabad', 33.6844, 73.0479, 36755.04, 'Tahira Khan', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (3, 'Karachi Port Warehouse', 'Kemari, Karachi', 24.8607, 67.0011, 47527.29, 'Adeel Afridi', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (4, 'Lahore Distribution Center', 'Multan Road, Lahore', 31.5204, 74.3587, 42556.78, 'Lubna Orakzai', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (5, 'Quetta Storage Facility', 'Zarghoon Road, Quetta', 30.1798, 66.975, 10735.05, 'Rabia Durrani', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (6, 'Multan Relief Depot', 'Bosan Road, Multan', 30.1575, 71.5249, 40825.5, 'Hassan Durrani', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (7, 'Sukkur Emergency Store', 'Military Road, Sukkur', 27.7052, 68.8574, 16228.84, 'Usman Durrani', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (8, 'Abbottabad Logistics Base', 'Mansehra Road, Abbottabad', 34.1688, 73.2215, 44786.06, 'Shahid Niazi', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (9, 'Hyderabad Supply Point', 'Latifabad, Hyderabad', 25.396, 68.3578, 46659.37, 'Nadia Malik', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (10, 'Swat Relief Warehouse', 'Mingora Bypass, Swat', 34.7717, 72.3609, 41484.73, 'Shahid Khan', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (11, 'Dera Ismail Khan Depot', 'Tank Road, DI Khan', 31.8626, 70.9019, 46601.93, 'Shahid Abbasi', 1);
INSERT INTO Warehouses (warehouse_id, name, location, latitude, longitude, capacity_kg, contact_person, is_active) VALUES (12, 'Chitral Emergency Base', 'Chitral Town Center', 35.8518, 71.7864, 41483.72, 'Mehreen Malik', 1);
-- (12 rows)

-- ────────────────────────────────────────
-- Items
-- ────────────────────────────────────────
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (1, 'Paracetamol 500mg Box', 'box', 0.5, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (2, 'First Aid Kit Standard', 'kit', 2.0, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (3, 'Surgical Mask Pack (50)', 'pack', 0.3, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (4, 'Bandage Roll 10cm', 'roll', 0.15, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (5, 'ORS Sachets Pack (20)', 'pack', 0.4, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (6, 'IV Drip Set', 'set', 0.8, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (7, 'Antiseptic Bottle 500ml', 'bottle', 0.6, 1);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (8, 'Rice Bag 10kg', 'bag', 10.0, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (9, 'Flour Bag 10kg', 'bag', 10.0, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (10, 'Cooking Oil 5L', 'can', 4.6, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (11, 'Lentils Pack 2kg', 'pack', 2.0, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (12, 'Canned Beans 400g', 'can', 0.45, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (13, 'Sugar Pack 2kg', 'pack', 2.0, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (14, 'Tea Pack 500g', 'pack', 0.5, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (15, 'Salt Pack 1kg', 'pack', 1.0, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (16, 'Biscuit Tin 2kg', 'tin', 2.1, 2);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (17, 'Water Bottle 1.5L', 'bottle', 1.5, 3);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (18, 'Water Purification Tablets (100)', 'pack', 0.1, 3);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (19, 'Water Jerry Can 20L', 'can', 0.8, 3);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (20, 'Water Filter Portable', 'unit', 1.2, 3);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (21, 'Family Tent 4-Person', 'tent', 15.0, 4);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (22, 'Tarpaulin Sheet 4x6m', 'sheet', 3.5, 4);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (23, 'Wool Blanket', 'blanket', 2.0, 4);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (24, 'Sleeping Bag Standard', 'bag', 1.8, 4);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (25, 'Ground Mat Roll', 'roll', 1.5, 4);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (26, 'Hygiene Kit Family', 'kit', 3.0, 5);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (27, 'Soap Bar Pack (10)', 'pack', 1.2, 5);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (28, 'Hand Sanitizer 500ml', 'bottle', 0.55, 5);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (29, 'Menstrual Pad Pack (20)', 'pack', 0.3, 5);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (30, 'Toothbrush Pack (5)', 'pack', 0.1, 5);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (31, 'Baby Formula 400g', 'tin', 0.45, 6);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (32, 'Diaper Pack Newborn (30)', 'pack', 1.5, 6);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (33, 'Baby Food Cereal 250g', 'pack', 0.28, 6);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (34, 'Child Paracetamol Syrup', 'bottle', 0.2, 6);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (35, 'Emergency Blanket Clothing Set', 'set', 2.5, 7);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (36, 'Winter Jacket Adult', 'piece', 1.2, 7);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (37, 'Rubber Boots Pair', 'pair', 1.8, 7);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (38, 'Child Clothing Set', 'set', 0.8, 7);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (39, 'Handheld Radio', 'unit', 0.35, 8);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (40, 'Battery Pack AA (20)', 'pack', 0.6, 8);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (41, 'Solar Charger 10W', 'unit', 0.4, 8);
INSERT INTO Items (item_id, name, unit_of_measure, weight_per_unit_kg, category_id) VALUES (42, 'Emergency Flashlight', 'unit', 0.25, 8);
-- (42 rows)

-- ────────────────────────────────────────
-- Disaster_Zones
-- ────────────────────────────────────────
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (1, 'Swat Valley Flood Zone', 'Flash flooding in Swat river basin affecting multiple villages', 'High', 35.2227, 72.4258, 45000, 1, 4, '2025-07-20 17:08:14');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (2, 'Balochistan Earthquake Zone', 'Seismic activity near Awaran district', 'Critical', 26.4553, 65.231, 78000, 1, 8, '2026-02-21 12:43:50');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (3, 'Sindh Flood Plains', 'Indus river overflow affecting agricultural areas in Sindh', 'Critical', 26.8943, 68.5247, 120000, 1, 10, '2025-10-25 08:06:59');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (4, 'Chitral Landslide Area', 'Monsoon triggered landslides blocking roads', 'High', 35.8518, 71.7864, 15000, 1, 1, '2026-01-21 11:57:05');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (5, 'Dera Ghazi Khan Floods', 'Riverine flooding from hill torrents', 'High', 30.0489, 70.6455, 35000, 1, 9, '2025-11-20 12:47:05');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (6, 'South Waziristan Crisis', 'Displacement from security operations', 'Medium', 32.3046, 69.8722, 25000, 1, 21, '2026-04-01 12:03:24');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (7, 'Tharparkar Drought Zone', 'Severe drought affecting Thar desert communities', 'High', 24.7414, 69.8018, 95000, 0, 1, '2025-11-11 06:30:05');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (8, 'Nowshera Flood Zone', 'Kabul river overflow affecting urban areas', 'Critical', 34.0153, 71.9747, 60000, 1, 19, '2025-11-13 01:23:34');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (9, 'Muzaffarabad Earthquake Area', 'Aftershock-prone zone from 2005 fault line', 'Medium', 34.3708, 73.4712, 30000, 1, 4, '2025-12-24 11:25:14');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (10, 'Kohistan Glacier Lake Zone', 'GLOF risk from glacial lake outbursts', 'Low', 35.21, 73.35, 8000, 1, 14, '2026-03-19 04:12:37');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (11, 'Lasbela Coastal Flood Zone', 'Cyclone and storm surge risk area', 'Medium', 25.84, 66.66, 20000, 1, 13, '2025-10-06 09:16:26');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (12, 'Dera Ismail Khan Heat Zone', 'Extreme heat wave affecting southern KP', 'Medium', 31.831, 70.9017, 42000, 1, 2, '2025-07-01 18:55:46');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (13, 'Shangla Landslide Belt', 'Monsoon-triggered mass movement zone', 'High', 34.88, 72.6, 12000, 1, 18, '2025-10-09 13:15:39');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (14, 'Jacobabad Extreme Heat Zone', 'Record temperatures exceeding 50C', 'High', 28.2769, 68.4514, 55000, 0, 14, '2025-12-17 22:41:18');
INSERT INTO Disaster_Zones (zone_id, name, description, severity_level, latitude, longitude, population_affected, is_active, reported_by, logged_at) VALUES (15, 'Mansehra Earthquake Risk', 'Seismic fault line through populated valleys', 'Low', 34.33, 73.2, 18000, 1, 11, '2025-09-02 10:56:03');
-- (15 rows)

-- ────────────────────────────────────────
-- Vehicles
-- ────────────────────────────────────────
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (1, 'QTA-5167', 'Flatbed', 6421.7, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (2, 'SWT-3243', 'Cargo Van', 10141.48, 'Available', 31);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (3, 'RWP-6753', 'Tanker', 12589.01, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (4, 'FSD-7718', 'Cargo Van', 6911.32, 'Available', 49);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (5, 'DIR-1489', 'Ambulance', 7974.05, 'InTransit', 50);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (6, 'LEA-5185', 'Pickup', 12195.16, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (7, 'SKR-1293', 'Cargo Van', 6509.39, 'InTransit', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (8, 'GUJ-8199', 'Cargo Van', 4037.77, 'InTransit', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (9, 'ABT-7065', 'Pickup', 3050.36, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (10, 'QTA-7711', 'Truck', 8582.38, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (11, 'ABT-7578', 'Pickup', 12120.54, 'InTransit', 45);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (12, 'FSD-7351', 'Tanker', 12317.59, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (13, 'KHI-9076', 'Cargo Van', 13509.52, 'InTransit', 34);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (14, 'LEA-4643', 'Mini Truck', 11776.29, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (15, 'HYD-1369', 'Flatbed', 4643.06, 'Available', 43);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (16, 'MRD-2367', 'Pickup', 3853.29, 'InTransit', 28);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (17, 'KHI-6778', 'Ambulance', 8367.86, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (18, 'KHI-6481', 'Mini Truck', 8969.15, 'InTransit', 50);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (19, 'GUJ-7914', 'Truck', 14169.75, 'Available', 39);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (20, 'GWD-9047', 'Mini Truck', 9247.16, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (21, 'KHI-8056', 'Truck', 6138.43, 'InTransit', 49);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (22, 'DIR-7757', 'Pickup', 14720.47, 'Available', 44);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (23, 'LES-1475', 'Flatbed', 6714.89, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (24, 'DIR-923', 'Ambulance', 5997.01, 'Available', 50);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (25, 'GUJ-4658', 'Mini Truck', 14292.46, 'Available', 41);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (26, 'LES-8937', 'Truck', 14998.66, 'Available', 50);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (27, 'PSH-608', 'Pickup', 3390.73, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (28, 'SWT-7858', 'Flatbed', 2158.65, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (29, 'HYD-4298', 'Mini Truck', 5848.98, 'InTransit', 48);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (30, 'ABT-2783', 'Ambulance', 2067.43, 'Available', 47);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (31, 'GUJ-6598', 'Flatbed', 3375.78, 'Available', 33);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (32, 'ABT-5041', 'Mini Truck', 10421.76, 'InTransit', 44);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (33, 'PSH-5788', 'Tanker', 6711.48, 'Available', 36);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (34, 'LES-6982', 'Mini Truck', 7607.92, 'Available', 40);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (35, 'SWT-7235', 'Pickup', 11140.03, 'Maintenance', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (36, 'LEB-8917', 'Mini Truck', 7510.71, 'Available', 34);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (37, 'FSD-4122', 'Mini Truck', 14052.02, 'Available', 50);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (38, 'HYD-9436', 'Tanker', 10188.73, 'Available', 36);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (39, 'DIR-8088', 'Pickup', 5644.96, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (40, 'LEB-9206', 'Truck', 7991.1, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (41, 'KHI-8104', 'Tanker', 11493.39, 'InTransit', 41);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (42, 'HYD-382', 'Truck', 4766.42, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (43, 'MUL-7853', 'Tanker', 8198.37, 'Available', 36);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (44, 'MUL-7534', 'Ambulance', 4946.03, 'Available', 36);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (45, 'ABT-8879', 'Mini Truck', 10507.37, 'Available', 34);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (46, 'QTA-9877', 'Ambulance', 14717.4, 'InTransit', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (47, 'MUL-3039', 'Ambulance', 705.15, 'Available', NULL);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (48, 'PSH-9166', 'Ambulance', 10612.55, 'Available', 41);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (49, 'ABT-300', 'Tanker', 4622.92, 'Available', 27);
INSERT INTO Vehicles (vehicle_id, license_plate, type, capacity_kg, status, assigned_driver) VALUES (50, 'LEB-7927', 'Truck', 12420.68, 'Available', NULL);
-- (50 rows)

-- ────────────────────────────────────────
-- Warehouse_Inventory
-- ────────────────────────────────────────
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 10, 239, '2026-03-20 20:42:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 42, 337, '2026-01-16 22:11:45');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 37, 398, '2026-01-26 07:33:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 20, 340, '2026-02-24 09:38:07');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 6, 358, '2026-01-21 05:43:05');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 16, 142, '2026-02-14 20:05:50');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 8, 58, '2026-02-10 00:05:50');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 27, 229, '2026-04-26 21:37:12');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 15, 260, '2026-03-16 01:11:18');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 25, 138, '2026-03-15 10:17:36');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 29, 379, '2026-04-27 02:35:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 30, 371, '2026-03-01 09:37:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 34, 423, '2026-02-20 15:28:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 41, 78, '2026-02-27 23:34:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 28, 96, '2026-03-10 05:10:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (1, 19, 56, '2026-01-16 06:02:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 39, 320, '2026-01-06 09:48:45');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 37, 315, '2026-01-11 06:22:42');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 19, 260, '2026-05-13 23:43:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 29, 246, '2026-03-13 06:36:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 8, 319, '2026-04-22 23:06:42');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 30, 436, '2026-05-06 03:19:19');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 20, 260, '2026-03-31 14:52:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 26, 190, '2026-03-24 03:48:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 18, 459, '2026-02-11 12:00:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 33, 230, '2026-05-07 10:29:37');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 32, 359, '2026-04-13 20:01:42');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 15, 38, '2026-04-27 03:12:22');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 3, 181, '2026-03-06 11:46:12');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 36, 79, '2026-04-14 18:44:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 2, 442, '2026-01-01 23:56:40');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 14, 465, '2026-04-29 15:02:45');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 24, 47, '2026-02-18 18:52:32');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 11, 205, '2026-05-08 22:46:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 42, 246, '2026-01-14 07:24:40');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 9, 156, '2026-02-03 10:29:12');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 1, 244, '2026-05-05 04:25:15');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 41, 34, '2026-03-03 05:45:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 38, 179, '2026-01-04 20:06:24');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (2, 40, 228, '2026-01-24 08:10:51');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 30, 402, '2026-02-04 02:32:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 8, 161, '2026-04-17 12:22:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 10, 498, '2026-05-10 09:43:38');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 32, 440, '2026-01-01 10:17:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 19, 391, '2026-03-18 21:22:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 33, 316, '2026-05-06 05:24:36');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 18, 248, '2026-05-04 12:33:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 27, 190, '2026-04-07 16:34:42');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 31, 497, '2026-03-24 06:52:07');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 34, 377, '2026-03-03 20:49:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 16, 216, '2026-03-01 14:57:21');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 15, 42, '2026-03-23 17:13:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 36, 381, '2026-04-08 14:03:24');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 5, 359, '2026-02-08 18:02:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 13, 38, '2026-02-02 18:17:16');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 7, 322, '2026-03-26 03:39:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 20, 467, '2026-04-23 03:37:49');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (3, 17, 289, '2026-04-27 00:33:31');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 27, 55, '2026-03-02 22:58:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 10, 370, '2026-03-15 08:16:57');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 5, 402, '2026-01-24 15:48:01');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 31, 70, '2026-01-26 16:09:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 17, 105, '2026-03-18 01:03:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 22, 43, '2026-03-25 02:02:35');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 26, 170, '2026-04-02 13:38:51');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 6, 240, '2026-02-07 08:53:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 37, 291, '2026-04-16 20:36:17');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 25, 369, '2026-02-16 06:11:20');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 21, 109, '2026-01-21 22:11:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 32, 465, '2026-04-08 22:33:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 23, 369, '2026-03-03 18:07:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 29, 487, '2026-02-06 08:27:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 33, 256, '2026-03-07 16:43:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 16, 150, '2026-01-03 16:56:21');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 18, 481, '2026-03-15 19:54:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 2, 100, '2026-01-19 16:04:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (4, 20, 196, '2026-03-18 23:15:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 17, 345, '2026-02-18 22:36:21');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 30, 148, '2026-02-05 22:52:25');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 20, 69, '2026-01-11 11:14:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 13, 423, '2026-04-23 01:12:53');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 25, 316, '2026-04-04 04:47:04');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 31, 66, '2026-03-17 11:53:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 7, 402, '2026-04-17 06:23:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 16, 122, '2026-02-03 19:38:21');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 38, 468, '2026-04-04 19:19:39');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 23, 276, '2026-03-11 05:59:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 19, 151, '2026-05-04 10:44:44');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 33, 402, '2026-03-28 04:11:35');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 10, 259, '2026-01-20 05:07:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 1, 406, '2026-02-27 14:28:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 27, 453, '2026-04-04 03:17:16');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 22, 424, '2026-04-12 00:30:24');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 39, 155, '2026-02-01 16:33:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 9, 208, '2026-03-09 21:16:59');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 29, 215, '2026-04-06 03:56:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 32, 365, '2026-03-01 17:09:57');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 28, 32, '2026-03-25 22:12:44');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 2, 133, '2026-01-17 23:08:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 40, 441, '2026-04-29 11:00:08');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 35, 352, '2026-04-15 04:14:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 41, 91, '2026-01-12 01:21:17');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 8, 175, '2026-05-07 04:13:40');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 12, 69, '2026-03-02 19:34:17');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (5, 4, 89, '2026-04-10 16:30:59');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 35, 82, '2026-04-27 03:20:15');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 27, 359, '2026-02-24 23:21:49');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 38, 347, '2026-01-06 01:50:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 10, 422, '2026-03-27 08:52:05');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 41, 84, '2026-02-22 02:29:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 7, 444, '2026-02-23 21:20:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 32, 130, '2026-03-01 11:57:44');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 40, 416, '2026-02-07 21:41:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 18, 21, '2026-03-12 05:16:04');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 3, 86, '2026-03-06 06:21:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 24, 76, '2026-01-07 04:47:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 37, 27, '2026-04-02 08:39:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 15, 321, '2026-03-24 00:34:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 30, 109, '2026-03-09 01:54:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 8, 84, '2026-04-18 19:09:15');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 12, 78, '2026-01-17 17:20:22');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 4, 249, '2026-04-03 18:41:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 22, 323, '2026-01-28 16:27:25');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 42, 277, '2026-02-26 22:23:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 34, 42, '2026-05-14 10:58:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 21, 254, '2026-01-08 02:12:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 36, 265, '2026-04-13 15:31:12');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 2, 371, '2026-01-28 17:51:00');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 13, 384, '2026-04-24 02:40:32');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 9, 480, '2026-01-21 11:43:39');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (6, 31, 331, '2026-02-07 02:23:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 18, 389, '2026-02-25 15:39:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 40, 251, '2026-02-28 15:03:59');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 38, 193, '2026-04-27 14:31:02');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 36, 232, '2026-01-25 11:22:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 21, 238, '2026-03-22 09:16:48');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 25, 211, '2026-02-09 17:16:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 34, 54, '2026-01-24 03:06:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 19, 67, '2026-04-21 03:30:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 30, 401, '2026-04-06 04:44:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 33, 304, '2026-01-16 21:21:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 28, 307, '2026-03-26 04:27:01');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 4, 230, '2026-04-01 15:23:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 26, 464, '2026-01-14 10:28:20');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 23, 327, '2026-03-21 12:48:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 31, 73, '2026-05-10 07:44:44');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 41, 99, '2026-05-04 08:09:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 27, 453, '2026-01-28 12:44:50');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 37, 452, '2026-04-05 04:10:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (7, 42, 410, '2026-03-13 20:54:08');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 28, 35, '2026-01-24 19:18:51');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 36, 130, '2026-04-07 15:17:08');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 40, 252, '2026-03-29 05:43:51');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 41, 209, '2026-03-21 11:48:37');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 2, 417, '2026-01-22 01:54:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 18, 99, '2026-02-10 22:29:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 38, 45, '2026-01-21 09:54:25');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 12, 246, '2026-04-19 17:40:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 37, 330, '2026-04-24 15:04:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 20, 159, '2026-02-25 18:39:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 22, 78, '2026-03-30 15:39:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 35, 76, '2026-03-14 21:35:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 1, 269, '2026-05-15 11:13:45');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 6, 43, '2026-02-26 14:23:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 42, 326, '2026-01-15 00:16:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 5, 124, '2026-03-19 07:41:26');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 19, 412, '2026-02-05 09:18:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 32, 168, '2026-03-25 04:22:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 13, 23, '2026-05-08 15:40:46');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 3, 109, '2026-02-03 13:50:34');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 27, 292, '2026-02-28 18:12:50');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (8, 21, 306, '2026-04-01 02:37:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 3, 222, '2026-03-21 12:21:40');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 28, 133, '2026-03-27 06:07:17');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 2, 59, '2026-05-11 23:03:18');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 30, 78, '2026-05-11 07:03:35');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 5, 483, '2026-03-31 12:46:59');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 21, 392, '2026-02-07 08:36:08');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 41, 72, '2026-02-07 09:19:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 26, 121, '2026-02-14 21:55:57');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 27, 98, '2026-01-20 06:26:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 19, 415, '2026-05-07 16:53:31');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 8, 406, '2026-04-25 20:33:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 13, 349, '2026-03-24 22:50:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 1, 181, '2026-02-08 16:00:40');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 11, 54, '2026-05-01 16:06:01');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 6, 343, '2026-03-19 10:00:02');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 35, 322, '2026-01-15 12:48:49');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 20, 279, '2026-01-19 11:18:05');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 15, 256, '2026-04-26 01:22:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 23, 49, '2026-04-05 10:27:07');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 12, 59, '2026-01-24 22:23:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 42, 324, '2026-05-10 13:59:54');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 14, 256, '2026-01-11 16:22:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 4, 485, '2026-02-18 11:42:23');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 32, 329, '2026-05-02 18:15:15');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 37, 97, '2026-01-16 16:24:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 31, 72, '2026-03-29 03:04:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (9, 22, 278, '2026-02-14 01:25:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 29, 367, '2026-04-09 10:20:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 42, 149, '2026-02-08 12:08:14');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 34, 61, '2026-02-06 12:44:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 40, 178, '2026-04-11 04:41:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 11, 324, '2026-01-22 11:16:17');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 24, 306, '2026-04-07 23:25:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 37, 425, '2026-03-26 04:39:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 19, 363, '2026-05-15 03:24:09');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 25, 350, '2026-04-19 18:30:48');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 27, 205, '2026-01-05 13:12:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 22, 178, '2026-02-16 07:47:54');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 32, 194, '2026-05-05 06:59:26');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 20, 135, '2026-02-05 05:38:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 2, 59, '2026-03-17 03:40:56');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 26, 279, '2026-05-15 01:22:27');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 21, 358, '2026-03-28 22:30:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 33, 87, '2026-04-07 05:36:58');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 38, 103, '2026-02-16 22:44:45');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 3, 434, '2026-02-12 15:56:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 39, 42, '2026-04-16 13:15:49');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 4, 366, '2026-03-02 16:10:22');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (10, 18, 332, '2026-03-14 16:20:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 35, 467, '2026-04-06 20:11:24');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 16, 498, '2026-01-27 18:47:01');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 20, 455, '2026-02-01 10:22:43');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 31, 62, '2026-02-11 09:55:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 13, 250, '2026-05-12 05:21:53');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 24, 445, '2026-04-22 03:20:21');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 29, 486, '2026-02-26 16:25:30');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 30, 472, '2026-03-31 00:58:15');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 19, 232, '2026-01-14 14:26:04');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 25, 277, '2026-04-06 08:35:03');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 27, 217, '2026-01-21 13:39:00');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 39, 134, '2026-01-08 11:36:10');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 6, 496, '2026-01-26 23:39:51');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 32, 191, '2026-02-07 05:00:35');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 7, 39, '2026-03-15 17:12:05');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 26, 376, '2026-02-05 17:04:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 40, 249, '2026-01-02 02:53:04');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 5, 29, '2026-03-07 07:51:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 9, 447, '2026-02-08 19:58:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 2, 392, '2026-04-19 04:02:53');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 21, 417, '2026-03-15 08:39:07');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (11, 41, 174, '2026-02-01 01:44:18');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 27, 360, '2026-01-22 19:03:34');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 41, 204, '2026-01-18 19:09:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 40, 298, '2026-05-10 18:28:55');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 30, 303, '2026-01-06 14:12:57');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 5, 467, '2026-05-01 01:35:06');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 8, 345, '2026-04-10 13:35:29');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 32, 149, '2026-01-05 13:00:05');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 35, 423, '2026-01-18 12:33:13');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 2, 143, '2026-01-27 21:11:11');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 33, 396, '2026-03-27 04:51:26');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 16, 42, '2026-04-01 19:52:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 23, 193, '2026-02-14 16:54:59');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 38, 376, '2026-05-03 23:00:02');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 10, 113, '2026-02-04 02:17:50');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 14, 386, '2026-04-28 01:20:47');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 1, 170, '2026-02-21 01:35:41');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 20, 425, '2026-02-21 01:31:32');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 12, 181, '2026-03-21 18:45:52');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 37, 223, '2026-05-02 09:13:22');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 19, 38, '2026-02-18 10:25:01');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 28, 202, '2026-01-13 23:52:28');
INSERT INTO Warehouse_Inventory (warehouse_id, item_id, quantity_in_stock, last_updated) VALUES (12, 6, 189, '2026-03-11 04:31:55');
-- (265 rows)

-- ────────────────────────────────────────
-- Dispatch_Logs
-- ────────────────────────────────────────
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (1, 13, 29, 14, 'Critical', 'Delivered', '2026-02-14 12:20:38', '2026-02-15 01:20:38', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (2, 12, 38, 12, 'Critical', 'Delivered', '2025-09-12 15:27:20', '2025-09-12 22:27:20', 'Second shipment to this zone');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (3, 10, 15, 18, 'Medium', 'Pending', NULL, NULL, 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (4, 8, 45, 23, 'Medium', 'Delivered', '2026-01-27 16:16:46', '2026-01-27 20:16:46', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (5, 10, 33, 9, 'High', 'Delivered', '2025-08-30 02:43:55', '2025-08-31 22:43:55', NULL);
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (6, 7, 29, 17, 'Critical', 'Delivered', '2025-08-16 05:11:54', '2025-08-17 21:11:54', NULL);
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (7, 13, 34, 2, 'Medium', 'EnRoute', '2026-02-04 13:11:07', NULL, 'Second shipment to this zone');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (8, 10, 3, 20, 'Medium', 'Delivered', '2026-02-06 13:32:40', '2026-02-07 19:32:40', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (9, 10, 11, 17, 'Medium', 'EnRoute', '2025-12-21 09:05:17', NULL, 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (10, 1, 15, 16, 'High', 'Failed', '2025-09-30 09:31:51', '2025-10-01 03:31:51', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (11, 4, 46, 10, 'High', 'Failed', '2025-11-11 04:27:54', '2025-11-11 14:27:54', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (12, 8, 15, 23, 'Medium', 'Pending', NULL, NULL, 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (13, 9, 41, 10, 'Critical', 'Delivered', '2025-10-29 13:09:41', '2025-10-30 23:09:41', 'Priority dispatch per NDMA directive');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (14, 2, 16, 5, 'Medium', 'Delivered', '2026-02-01 20:10:16', '2026-02-03 10:10:16', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (15, 8, 42, 5, 'High', 'Pending', NULL, NULL, 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (16, 9, 32, 25, 'Medium', 'Delivered', '2025-10-04 11:32:33', '2025-10-06 06:32:33', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (17, 8, 36, 22, 'High', 'Pending', NULL, NULL, 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (18, 3, 11, 14, 'High', 'Delivered', '2025-10-03 18:51:48', '2025-10-04 05:51:48', 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (19, 3, 14, 11, 'Critical', 'EnRoute', '2026-04-23 10:20:30', NULL, 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (20, 5, 16, 21, 'Critical', 'EnRoute', '2026-01-03 22:22:14', NULL, 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (21, 2, 39, 21, 'Medium', 'Failed', '2025-10-18 06:13:59', '2025-10-20 02:13:59', 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (22, 12, 45, 11, 'Critical', 'Delivered', '2025-08-15 02:57:26', '2025-08-15 06:57:26', NULL);
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (23, 13, 43, 9, 'High', 'Delivered', '2026-03-02 22:30:16', '2026-03-04 16:30:16', 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (24, 8, 47, 18, 'Medium', 'Failed', '2026-04-05 08:54:56', '2026-04-07 05:54:56', 'Second shipment to this zone');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (25, 5, 36, 3, 'High', 'EnRoute', '2026-03-01 17:37:51', NULL, 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (26, 4, 26, 20, 'Medium', 'Delivered', '2026-01-11 12:34:28', '2026-01-12 15:34:28', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (27, 13, 29, 17, 'High', 'EnRoute', '2026-03-27 04:27:39', NULL, 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (28, 8, 19, 5, 'Low', 'EnRoute', '2026-02-13 22:24:18', NULL, 'Second shipment to this zone');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (29, 4, 14, 11, 'Critical', 'Delivered', '2025-11-06 05:48:05', '2025-11-07 14:48:05', 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (30, 8, 38, 10, 'High', 'Pending', NULL, NULL, 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (31, 4, 17, 19, 'Medium', 'Pending', NULL, NULL, NULL);
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (32, 11, 37, 10, 'High', 'Delivered', '2026-03-09 04:52:35', '2026-03-09 22:52:35', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (33, 13, 31, 12, 'Low', 'Pending', NULL, NULL, 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (34, 5, 5, 13, 'High', 'Delivered', '2025-12-22 22:41:29', '2025-12-24 19:41:29', 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (35, 2, 11, 4, 'Medium', 'Delivered', '2026-01-21 20:18:36', '2026-01-22 21:18:36', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (36, 4, 45, 17, 'Medium', 'Pending', NULL, NULL, 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (37, 13, 37, 17, 'High', 'Delivered', '2026-04-21 05:05:21', '2026-04-22 03:05:21', 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (38, 6, 14, 13, 'Critical', 'Delivered', '2026-01-01 21:37:00', '2026-01-02 20:37:00', 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (39, 14, 39, 18, 'High', 'Delivered', '2026-04-01 00:36:20', '2026-04-02 01:36:20', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (40, 11, 8, 14, 'High', 'Delivered', '2025-08-14 21:43:58', '2025-08-16 05:43:58', 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (41, 11, 44, 19, 'Medium', 'Pending', NULL, NULL, 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (42, 11, 46, 25, 'Critical', 'Pending', NULL, NULL, 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (43, 12, 8, 7, 'Low', 'EnRoute', '2025-10-17 15:02:07', NULL, 'Priority dispatch per NDMA directive');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (44, 7, 39, 25, 'High', 'Delivered', '2025-09-01 05:01:38', '2025-09-02 16:01:38', 'Priority dispatch per NDMA directive');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (45, 9, 25, 22, 'High', 'Delivered', '2025-10-28 16:44:09', '2025-10-30 04:44:09', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (46, 9, 27, 22, 'High', 'Delivered', '2025-12-14 22:12:43', '2025-12-16 06:12:43', 'Priority dispatch per NDMA directive');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (47, 4, 21, 18, 'Medium', 'Failed', '2025-12-31 10:31:20', '2026-01-02 09:31:20', 'Priority dispatch per NDMA directive');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (48, 12, 38, 11, 'High', 'Delivered', '2025-12-19 10:28:41', '2025-12-19 19:28:41', 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (49, 11, 41, 13, 'Critical', 'Delivered', '2026-01-24 05:19:58', '2026-01-25 01:19:58', 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (50, 5, 6, 12, 'Critical', 'Delivered', '2026-04-03 07:47:27', '2026-04-03 21:47:27', 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (51, 5, 42, 23, 'Medium', 'Pending', NULL, NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (52, 11, 40, 8, 'High', 'Pending', NULL, NULL, 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (53, 2, 50, 25, 'Medium', 'Failed', '2025-10-20 14:48:54', '2025-10-22 09:48:54', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (54, 8, 48, 7, 'High', 'EnRoute', '2025-12-25 23:30:59', NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (55, 15, 6, 21, 'High', 'Delivered', '2025-08-20 06:22:26', '2025-08-21 10:22:26', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (56, 15, 3, 13, 'High', 'EnRoute', '2025-12-27 01:21:50', NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (57, 5, 43, 20, 'Medium', 'Failed', '2025-12-24 16:32:32', '2025-12-26 11:32:32', 'Flood water receding, road accessible');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (58, 9, 38, 5, 'Critical', 'Delivered', '2025-11-07 04:06:04', '2025-11-08 03:06:04', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (59, 12, 36, 21, 'Medium', 'EnRoute', '2026-01-20 10:44:29', NULL, 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (60, 11, 16, 6, 'High', 'Delivered', '2026-02-24 15:34:19', '2026-02-26 01:34:19', 'Weather delay expected');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (61, 2, 31, 22, 'Low', 'Failed', '2026-04-02 11:46:55', '2026-04-03 04:46:55', 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (62, 5, 30, 8, 'Medium', 'EnRoute', '2026-01-16 10:59:36', NULL, 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (63, 12, 43, 1, 'Medium', 'Delivered', '2025-11-29 02:15:42', '2025-11-30 22:15:42', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (64, 8, 24, 6, 'Medium', 'Delivered', '2026-01-07 04:16:29', '2026-01-08 22:16:29', 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (65, 6, 46, 8, 'Medium', 'Pending', NULL, NULL, 'Military escort arranged for convoy');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (66, 6, 32, 23, 'High', 'Delivered', '2026-05-03 07:57:07', '2026-05-04 00:57:07', NULL);
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (67, 13, 45, 3, 'High', 'Delivered', '2026-02-02 02:50:37', '2026-02-03 16:50:37', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (68, 1, 42, 17, 'Medium', 'Delivered', '2025-10-24 11:56:47', '2025-10-25 22:56:47', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (69, 2, 50, 7, 'High', 'Delivered', '2026-04-19 16:13:10', '2026-04-19 21:13:10', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (70, 3, 39, 14, 'High', 'Pending', NULL, NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (71, 7, 20, 1, 'High', 'Delivered', '2025-08-24 15:25:34', '2025-08-25 15:25:34', 'Road partially blocked, alternate route taken');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (72, 9, 4, 3, 'Critical', 'Delivered', '2025-12-25 14:53:11', '2025-12-26 03:53:11', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (73, 13, 48, 24, 'High', 'Delivered', '2026-02-12 16:19:50', '2026-02-13 18:19:50', 'Second shipment to this zone');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (74, 2, 50, 22, 'Critical', 'Pending', NULL, NULL, 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (75, 9, 31, 17, 'Medium', 'Failed', '2025-08-02 00:49:39', '2025-08-02 21:49:39', 'Contains baby supplies and medicine');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (76, 11, 41, 14, 'High', 'Delivered', '2025-12-05 16:46:15', '2025-12-06 16:46:15', 'Coordinating with PRCS field team');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (77, 5, 16, 24, 'High', 'Pending', NULL, NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (78, 4, 17, 3, 'Medium', 'Pending', NULL, NULL, 'Urgent medical supplies needed');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (79, 7, 34, 8, 'High', 'Delivered', '2025-08-29 05:06:07', '2025-08-30 15:06:07', 'Edhi ground team awaiting delivery');
INSERT INTO Dispatch_Logs (dispatch_id, zone_id, vehicle_id, user_id, priority, status, departure_time, arrival_time, notes) VALUES (80, 4, 43, 11, 'High', 'Delivered', '2026-01-12 08:37:31', '2026-01-13 05:37:31', 'Coordinating with PRCS field team');
-- (80 rows)

-- Temporarily disable stock-check trigger for bulk loading
DROP TRIGGER IF EXISTS trg_check_stock_before_dispatch;
DROP TRIGGER IF EXISTS trg_audit_dispatch_update;
DROP TRIGGER IF EXISTS trg_audit_inventory_update;

-- ────────────────────────────────────────
-- Dispatch_Line_Items
-- ────────────────────────────────────────
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (1, 1, 4, 27, 43);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (2, 1, 5, 4, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (3, 1, 10, 12, 85);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (4, 1, 11, 28, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (5, 1, 8, 4, 49);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (6, 2, 9, 21, 94);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (7, 2, 7, 27, 24);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (8, 2, 5, 25, 28);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (9, 2, 9, 31, 35);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (10, 3, 5, 10, 64);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (11, 3, 1, 36, 57);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (12, 4, 9, 34, 22);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (13, 4, 7, 16, 37);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (14, 4, 4, 22, 87);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (15, 4, 2, 29, 52);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (16, 5, 9, 13, 11);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (17, 6, 7, 39, 82);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (18, 6, 1, 5, 29);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (19, 6, 10, 36, 32);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (20, 7, 4, 22, 43);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (21, 7, 1, 14, 29);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (22, 7, 12, 8, 100);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (23, 7, 8, 16, 94);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (24, 8, 12, 14, 55);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (25, 8, 4, 36, 46);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (26, 8, 5, 25, 64);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (27, 8, 9, 42, 50);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (28, 8, 5, 17, 51);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (29, 9, 8, 30, 17);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (30, 9, 12, 31, 45);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (31, 9, 4, 24, 45);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (32, 9, 7, 3, 77);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (33, 9, 4, 10, 7);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (34, 10, 9, 38, 79);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (35, 10, 12, 27, 42);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (36, 10, 3, 13, 47);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (37, 11, 7, 37, 36);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (38, 11, 8, 36, 88);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (39, 12, 5, 32, 97);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (40, 12, 11, 32, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (41, 12, 3, 23, 26);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (42, 13, 12, 35, 67);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (43, 13, 3, 35, 87);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (44, 14, 9, 3, 14);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (45, 15, 1, 27, 22);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (46, 16, 2, 10, 6);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (47, 16, 4, 33, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (48, 17, 1, 40, 86);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (49, 17, 11, 40, 66);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (50, 17, 11, 32, 7);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (51, 18, 9, 36, 57);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (52, 19, 1, 34, 97);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (53, 20, 9, 19, 7);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (54, 20, 9, 28, 27);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (55, 20, 2, 7, 72);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (56, 21, 4, 13, 84);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (57, 21, 9, 17, 50);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (58, 22, 7, 6, 52);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (59, 22, 7, 30, 77);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (60, 22, 4, 15, 43);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (61, 23, 11, 42, 9);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (62, 24, 7, 25, 53);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (63, 25, 8, 4, 86);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (64, 25, 1, 11, 15);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (65, 25, 8, 28, 87);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (66, 25, 6, 37, 17);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (67, 25, 9, 3, 34);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (68, 26, 12, 37, 65);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (69, 26, 5, 3, 14);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (70, 27, 9, 37, 89);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (71, 27, 1, 12, 45);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (72, 27, 1, 14, 80);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (73, 28, 12, 26, 14);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (74, 28, 5, 11, 77);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (75, 29, 10, 25, 91);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (76, 29, 9, 22, 54);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (77, 30, 12, 6, 69);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (78, 30, 12, 23, 11);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (79, 31, 7, 15, 14);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (80, 32, 10, 40, 81);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (81, 32, 7, 21, 8);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (82, 32, 11, 18, 62);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (83, 33, 4, 23, 75);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (84, 33, 7, 28, 28);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (85, 33, 11, 38, 89);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (86, 33, 7, 6, 84);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (87, 34, 4, 5, 15);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (88, 34, 5, 10, 53);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (89, 34, 12, 41, 24);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (90, 35, 6, 24, 18);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (91, 35, 2, 1, 44);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (92, 35, 8, 24, 39);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (93, 35, 2, 9, 16);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (94, 36, 7, 29, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (95, 36, 9, 33, 57);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (96, 37, 1, 6, 50);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (97, 38, 2, 39, 81);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (98, 38, 6, 25, 6);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (99, 38, 5, 27, 54);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (100, 38, 2, 36, 36);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (101, 38, 10, 34, 26);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (102, 39, 3, 9, 39);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (103, 39, 5, 18, 68);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (104, 39, 3, 5, 26);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (105, 39, 7, 18, 58);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (106, 40, 8, 5, 51);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (107, 40, 5, 16, 97);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (108, 40, 11, 32, 81);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (109, 41, 4, 30, 18);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (110, 41, 3, 20, 5);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (111, 41, 7, 22, 84);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (112, 41, 8, 22, 60);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (113, 42, 3, 20, 46);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (114, 42, 10, 13, 66);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (115, 42, 6, 12, 55);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (116, 42, 6, 19, 99);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (117, 42, 12, 41, 67);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (118, 43, 4, 21, 53);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (119, 43, 5, 26, 51);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (120, 43, 2, 37, 30);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (121, 43, 10, 35, 28);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (122, 43, 11, 36, 8);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (123, 44, 12, 14, 61);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (124, 44, 5, 5, 57);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (125, 44, 11, 32, 22);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (126, 44, 11, 20, 35);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (127, 45, 11, 10, 96);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (128, 45, 7, 25, 14);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (129, 45, 8, 39, 66);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (130, 46, 7, 35, 69);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (131, 46, 12, 27, 74);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (132, 46, 1, 24, 94);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (133, 46, 9, 39, 86);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (134, 46, 2, 7, 36);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (135, 47, 3, 42, 83);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (136, 47, 1, 37, 87);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (137, 47, 11, 42, 56);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (138, 48, 7, 7, 6);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (139, 48, 2, 17, 33);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (140, 48, 9, 34, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (141, 49, 12, 37, 33);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (142, 49, 8, 24, 55);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (143, 49, 8, 38, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (144, 49, 9, 10, 49);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (145, 49, 1, 31, 18);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (146, 50, 7, 6, 19);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (147, 50, 12, 10, 49);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (148, 50, 5, 22, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (149, 51, 9, 31, 49);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (150, 51, 8, 7, 61);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (151, 52, 6, 5, 43);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (152, 52, 1, 8, 7);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (153, 52, 6, 42, 18);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (154, 52, 11, 11, 99);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (155, 53, 9, 12, 75);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (156, 53, 3, 22, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (157, 54, 8, 15, 56);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (158, 54, 11, 12, 28);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (159, 54, 11, 28, 55);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (160, 54, 1, 40, 30);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (161, 55, 10, 28, 54);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (162, 55, 1, 14, 31);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (163, 55, 5, 5, 78);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (164, 55, 2, 35, 28);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (165, 56, 6, 13, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (166, 56, 2, 17, 90);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (167, 56, 8, 34, 86);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (168, 57, 10, 25, 83);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (169, 57, 7, 38, 19);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (170, 57, 6, 23, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (171, 58, 3, 20, 83);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (172, 58, 10, 6, 91);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (173, 58, 3, 21, 20);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (174, 58, 4, 20, 19);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (175, 58, 3, 24, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (176, 59, 9, 25, 58);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (177, 59, 10, 9, 78);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (178, 60, 7, 12, 67);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (179, 60, 11, 35, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (180, 60, 11, 12, 76);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (181, 60, 3, 32, 41);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (182, 61, 3, 21, 62);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (183, 61, 10, 4, 50);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (184, 62, 8, 9, 29);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (185, 63, 9, 33, 88);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (186, 63, 8, 27, 92);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (187, 63, 12, 29, 67);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (188, 64, 2, 37, 8);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (189, 64, 4, 19, 9);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (190, 65, 4, 35, 41);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (191, 65, 3, 30, 77);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (192, 65, 12, 32, 75);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (193, 66, 2, 37, 19);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (194, 66, 5, 35, 51);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (195, 66, 9, 3, 97);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (196, 66, 8, 35, 32);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (197, 66, 7, 7, 99);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (198, 67, 5, 3, 62);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (199, 67, 5, 23, 16);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (200, 68, 2, 16, 31);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (201, 68, 12, 38, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (202, 68, 6, 40, 85);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (203, 68, 7, 11, 83);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (204, 69, 4, 14, 12);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (205, 69, 10, 23, 73);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (206, 70, 10, 35, 26);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (207, 70, 6, 19, 42);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (208, 70, 10, 18, 70);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (209, 71, 3, 27, 12);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (210, 72, 11, 9, 94);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (211, 72, 3, 16, 23);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (212, 72, 12, 21, 36);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (213, 73, 8, 10, 78);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (214, 73, 11, 18, 85);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (215, 73, 7, 25, 62);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (216, 73, 2, 41, 16);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (217, 74, 9, 18, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (218, 74, 6, 30, 67);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (219, 74, 6, 38, 5);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (220, 74, 12, 6, 98);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (221, 75, 11, 23, 13);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (222, 75, 9, 26, 32);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (223, 75, 7, 14, 68);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (224, 75, 5, 21, 41);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (225, 76, 9, 37, 21);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (226, 76, 10, 32, 48);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (227, 76, 11, 4, 10);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (228, 77, 11, 30, 7);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (229, 78, 3, 29, 63);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (230, 79, 7, 13, 93);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (231, 80, 11, 20, 25);
INSERT INTO Dispatch_Line_Items (line_item_id, dispatch_id, warehouse_id, item_id, quantity_dispatched) VALUES (232, 80, 5, 6, 88);
-- (232 rows)

-- ────────────────────────────────────────
-- Audit_Logs
-- ────────────────────────────────────────
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (1, 'Dispatch_Line_Items', 33, 'INSERT', 22, '2025-10-24 01:53:07', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (2, 'Disaster_Zones', 40, 'UPDATE', 25, '2025-11-28 15:37:40', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (3, 'Dispatch_Logs', 13, 'INSERT', 16, '2025-09-09 04:49:53', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (4, 'Vehicles', 29, 'UPDATE', 15, '2025-08-05 00:17:36', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (5, 'Dispatch_Line_Items', 16, 'DELETE', 14, '2025-10-07 17:23:33', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (6, 'Dispatch_Logs', 30, 'UPDATE', 24, '2025-09-22 03:45:26', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (7, 'Dispatch_Line_Items', 48, 'DELETE', 5, '2026-02-12 04:50:51', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (8, 'Warehouse_Inventory', 9, 'UPDATE', 1, '2025-10-24 16:01:24', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (9, 'Dispatch_Line_Items', 28, 'UPDATE', 5, '2026-02-27 22:25:50', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (10, 'Disaster_Zones', 28, 'INSERT', 4, '2025-10-11 04:29:02', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (11, 'Vehicles', 50, 'UPDATE', 14, '2026-01-09 05:05:27', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (12, 'Warehouse_Inventory', 36, 'UPDATE', 8, '2026-05-11 21:52:54', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (13, 'Vehicles', 78, 'INSERT', 23, '2025-08-14 23:58:18', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (14, 'Dispatch_Line_Items', 27, 'UPDATE', 17, '2025-11-05 14:15:47', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (15, 'Dispatch_Line_Items', 7, 'UPDATE', 8, '2026-04-11 14:02:58', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (16, 'Dispatch_Logs', 31, 'UPDATE', 20, '2025-09-06 19:14:03', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (17, 'Dispatch_Logs', 47, 'DELETE', 5, '2026-02-15 20:41:38', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (18, 'Disaster_Zones', 47, 'UPDATE', 6, '2026-03-30 02:39:27', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (19, 'Dispatch_Logs', 76, 'INSERT', 9, '2025-11-19 01:27:00', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (20, 'Dispatch_Logs', 51, 'UPDATE', 21, '2026-04-14 15:07:31', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (21, 'Disaster_Zones', 52, 'INSERT', 18, '2026-05-03 22:25:46', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (22, 'Warehouse_Inventory', 36, 'INSERT', 3, '2026-04-19 07:23:53', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (23, 'Warehouse_Inventory', 69, 'UPDATE', 19, '2025-09-03 11:17:34', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (24, 'Disaster_Zones', 31, 'INSERT', 3, '2026-03-11 04:13:22', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (25, 'Disaster_Zones', 79, 'UPDATE', 10, '2025-10-29 04:20:55', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (26, 'Dispatch_Logs', 18, 'UPDATE', 6, '2026-04-12 12:37:23', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (27, 'Vehicles', 67, 'UPDATE', 24, '2025-12-11 06:04:44', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (28, 'Dispatch_Line_Items', 17, 'UPDATE', 9, '2025-09-30 01:04:07', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (29, 'Dispatch_Line_Items', 55, 'INSERT', 3, '2025-12-13 20:59:42', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (30, 'Dispatch_Logs', 64, 'UPDATE', 12, '2025-08-29 18:11:24', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (31, 'Vehicles', 22, 'UPDATE', 9, '2025-09-22 20:53:43', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (32, 'Dispatch_Logs', 30, 'UPDATE', 1, '2025-08-23 00:26:50', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (33, 'Warehouse_Inventory', 6, 'UPDATE', 13, '2025-10-16 06:30:56', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (34, 'Dispatch_Logs', 71, 'UPDATE', 23, '2026-03-03 08:10:27', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (35, 'Dispatch_Line_Items', 32, 'UPDATE', 24, '2026-01-11 09:52:34', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (36, 'Dispatch_Logs', 74, 'UPDATE', 17, '2025-08-27 06:31:47', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (37, 'Warehouse_Inventory', 67, 'DELETE', 13, '2025-09-05 16:56:00', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (38, 'Dispatch_Line_Items', 40, 'UPDATE', 18, '2026-03-22 00:17:24', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (39, 'Dispatch_Line_Items', 26, 'INSERT', 10, '2025-12-03 16:53:27', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (40, 'Dispatch_Line_Items', 76, 'DELETE', 25, '2025-11-09 19:53:58', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (41, 'Warehouse_Inventory', 20, 'INSERT', 14, '2025-08-13 08:28:59', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (42, 'Vehicles', 45, 'UPDATE', 23, '2025-08-05 12:11:51', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (43, 'Dispatch_Logs', 49, 'UPDATE', 24, '2026-01-05 03:47:04', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (44, 'Warehouse_Inventory', 68, 'DELETE', 14, '2026-04-09 02:10:50', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (45, 'Warehouse_Inventory', 36, 'INSERT', 8, '2026-04-24 15:02:20', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (46, 'Dispatch_Line_Items', 59, 'DELETE', 3, '2025-09-18 18:24:07', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (47, 'Warehouse_Inventory', 51, 'INSERT', 19, '2025-09-01 15:50:14', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (48, 'Warehouse_Inventory', 31, 'INSERT', 11, '2026-02-18 11:52:42', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (49, 'Dispatch_Line_Items', 58, 'INSERT', 3, '2025-11-12 04:57:20', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (50, 'Vehicles', 14, 'INSERT', 6, '2026-03-19 16:58:06', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (51, 'Dispatch_Line_Items', 53, 'INSERT', 12, '2025-11-15 16:27:13', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (52, 'Dispatch_Line_Items', 60, 'INSERT', 4, '2025-09-16 05:44:18', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (53, 'Dispatch_Line_Items', 78, 'INSERT', 11, '2025-10-15 03:19:15', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (54, 'Warehouse_Inventory', 46, 'UPDATE', 2, '2026-01-01 09:28:20', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (55, 'Warehouse_Inventory', 4, 'DELETE', 15, '2026-05-12 20:01:45', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (56, 'Warehouse_Inventory', 13, 'UPDATE', 5, '2025-10-02 00:26:07', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (57, 'Dispatch_Logs', 29, 'INSERT', 13, '2026-02-07 22:56:54', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (58, 'Dispatch_Logs', 75, 'UPDATE', 3, '2025-08-12 02:20:50', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (59, 'Warehouse_Inventory', 57, 'UPDATE', 3, '2026-01-17 04:27:39', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (60, 'Dispatch_Logs', 60, 'INSERT', 19, '2026-03-10 14:22:53', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (61, 'Disaster_Zones', 4, 'UPDATE', 14, '2025-10-28 12:53:12', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (62, 'Warehouse_Inventory', 24, 'INSERT', 15, '2025-10-16 01:15:41', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (63, 'Vehicles', 80, 'UPDATE', 21, '2025-12-30 18:09:50', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (64, 'Disaster_Zones', 71, 'UPDATE', 3, '2025-12-22 13:56:42', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (65, 'Warehouse_Inventory', 54, 'INSERT', 17, '2025-12-06 22:57:54', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (66, 'Vehicles', 3, 'DELETE', 23, '2026-01-31 17:27:53', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (67, 'Vehicles', 63, 'UPDATE', 19, '2026-04-15 11:42:33', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (68, 'Disaster_Zones', 35, 'INSERT', 11, '2025-11-21 01:04:00', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (69, 'Dispatch_Line_Items', 8, 'UPDATE', 16, '2026-04-29 13:00:49', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (70, 'Vehicles', 30, 'DELETE', 4, '2025-12-05 23:54:56', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (71, 'Warehouse_Inventory', 35, 'UPDATE', 24, '2025-08-29 07:59:18', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (72, 'Vehicles', 50, 'UPDATE', 6, '2025-10-30 08:36:45', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (73, 'Vehicles', 41, 'UPDATE', 23, '2026-01-31 21:32:17', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (74, 'Dispatch_Logs', 46, 'DELETE', 19, '2025-10-12 20:30:07', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (75, 'Warehouse_Inventory', 64, 'UPDATE', 6, '2026-04-09 01:22:55', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (76, 'Dispatch_Logs', 8, 'INSERT', 8, '2025-08-11 19:10:02', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (77, 'Disaster_Zones', 1, 'UPDATE', 20, '2025-11-12 04:45:03', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (78, 'Dispatch_Line_Items', 23, 'DELETE', 11, '2025-08-31 00:47:52', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (79, 'Warehouse_Inventory', 76, 'UPDATE', 5, '2025-09-26 19:09:42', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (80, 'Dispatch_Line_Items', 10, 'UPDATE', 22, '2026-02-19 21:20:10', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (81, 'Dispatch_Logs', 44, 'UPDATE', 5, '2025-10-20 15:54:21', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (82, 'Disaster_Zones', 41, 'INSERT', 18, '2026-01-30 08:07:40', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (83, 'Vehicles', 23, 'UPDATE', 24, '2025-12-29 04:38:11', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (84, 'Warehouse_Inventory', 1, 'DELETE', 19, '2026-02-17 20:39:41', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (85, 'Dispatch_Logs', 24, 'UPDATE', 20, '2025-11-22 23:17:19', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (86, 'Vehicles', 14, 'DELETE', 5, '2026-01-17 02:49:58', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (87, 'Warehouse_Inventory', 45, 'DELETE', 6, '2025-09-15 23:16:08', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (88, 'Dispatch_Line_Items', 58, 'INSERT', 7, '2025-12-06 02:28:05', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (89, 'Dispatch_Line_Items', 33, 'UPDATE', 24, '2025-08-01 01:45:10', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (90, 'Disaster_Zones', 57, 'UPDATE', 6, '2026-02-28 17:57:09', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (91, 'Disaster_Zones', 45, 'UPDATE', 4, '2026-04-03 21:02:46', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (92, 'Warehouse_Inventory', 21, 'UPDATE', 2, '2025-12-29 00:43:51', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (93, 'Dispatch_Line_Items', 34, 'DELETE', 3, '2026-01-23 06:11:36', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (94, 'Disaster_Zones', 21, 'UPDATE', 18, '2025-09-17 12:18:15', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (95, 'Vehicles', 79, 'DELETE', 23, '2025-08-16 15:42:14', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (96, 'Warehouse_Inventory', 78, 'DELETE', 6, '2025-08-28 03:41:12', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (97, 'Dispatch_Line_Items', 27, 'DELETE', 14, '2026-05-11 19:39:55', '{"status": "Failed", "notes": "Cancelled"}', NULL);
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (98, 'Dispatch_Line_Items', 37, 'INSERT', 4, '2025-08-26 14:18:18', NULL, '{"status": "Pending", "priority": "Medium"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (99, 'Vehicles', 71, 'UPDATE', 5, '2025-08-28 13:08:14', '{"status": "Pending"}', '{"status": "EnRoute"}');
INSERT INTO Audit_Logs (audit_id, table_name, record_id, action, changed_by, changed_at, old_values, new_values) VALUES (100, 'Dispatch_Logs', 55, 'INSERT', 22, '2026-04-03 07:16:11', NULL, '{"status": "Pending", "priority": "Medium"}');
-- (100 rows)

SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- RECREATE TRIGGERS (after bulk load)
-- ============================================================

DELIMITER //

CREATE TRIGGER trg_check_stock_before_dispatch
BEFORE INSERT ON Dispatch_Line_Items
FOR EACH ROW
BEGIN
    DECLARE current_stock INT;
    SELECT quantity_in_stock INTO current_stock
    FROM Warehouse_Inventory
    WHERE warehouse_id = NEW.warehouse_id AND item_id = NEW.item_id;
    IF current_stock IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: Item not stocked in the specified warehouse.';
    END IF;
    IF NEW.quantity_dispatched > current_stock THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: Insufficient stock.';
    END IF;
    UPDATE Warehouse_Inventory
    SET quantity_in_stock = quantity_in_stock - NEW.quantity_dispatched
    WHERE warehouse_id = NEW.warehouse_id AND item_id = NEW.item_id;
END //

CREATE TRIGGER trg_audit_dispatch_update
AFTER UPDATE ON Dispatch_Logs
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Logs (table_name, record_id, action, changed_by, old_values, new_values)
    VALUES ('Dispatch_Logs', OLD.dispatch_id, 'UPDATE', NEW.user_id,
        JSON_OBJECT('status', OLD.status, 'priority', OLD.priority,
                    'departure_time', OLD.departure_time, 'arrival_time', OLD.arrival_time),
        JSON_OBJECT('status', NEW.status, 'priority', NEW.priority,
                    'departure_time', NEW.departure_time, 'arrival_time', NEW.arrival_time));
END //

CREATE TRIGGER trg_audit_inventory_update
AFTER UPDATE ON Warehouse_Inventory
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Logs (table_name, record_id, action, changed_by, old_values, new_values)
    VALUES ('Warehouse_Inventory', OLD.warehouse_id, 'UPDATE', NULL,
        JSON_OBJECT('warehouse_id', OLD.warehouse_id, 'item_id', OLD.item_id,
                    'quantity_in_stock', OLD.quantity_in_stock),
        JSON_OBJECT('warehouse_id', NEW.warehouse_id, 'item_id', NEW.item_id,
                    'quantity_in_stock', NEW.quantity_in_stock));
END //

DELIMITER ;

-- ============================================================
-- DEMONSTRATE UPDATE & DELETE WITH WHERE
-- ============================================================

-- UPDATE: Mark a dispatch as Delivered and record arrival time
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

-- DELETE: Remove a failed dispatch (line items cascade)
DELETE FROM Dispatch_Logs
WHERE dispatch_id = 80
  AND status = 'Failed';

-- ============================================================
-- VALIDATION QUERIES (screenshot the results)
-- ============================================================

-- 1. Row counts for every table
SELECT 'Users' AS table_name, COUNT(*) AS row_count FROM Users
UNION ALL SELECT 'Warehouses', COUNT(*) FROM Warehouses
UNION ALL SELECT 'Disaster_Zones', COUNT(*) FROM Disaster_Zones
UNION ALL SELECT 'Vehicles', COUNT(*) FROM Vehicles
UNION ALL SELECT 'Categories', COUNT(*) FROM Categories
UNION ALL SELECT 'Items', COUNT(*) FROM Items
UNION ALL SELECT 'Warehouse_Inventory', COUNT(*) FROM Warehouse_Inventory
UNION ALL SELECT 'Dispatch_Logs', COUNT(*) FROM Dispatch_Logs
UNION ALL SELECT 'Dispatch_Line_Items', COUNT(*) FROM Dispatch_Line_Items
UNION ALL SELECT 'Audit_Logs', COUNT(*) FROM Audit_Logs;

-- 2. NULL check on key columns
SELECT 'Users.username NULLs' AS check_name, COUNT(*) AS null_count FROM Users WHERE username IS NULL
UNION ALL SELECT 'Users.role NULLs', COUNT(*) FROM Users WHERE role IS NULL
UNION ALL SELECT 'Warehouses.name NULLs', COUNT(*) FROM Warehouses WHERE name IS NULL
UNION ALL SELECT 'DZ.severity_level NULLs', COUNT(*) FROM Disaster_Zones WHERE severity_level IS NULL
UNION ALL SELECT 'Items.category_id NULLs', COUNT(*) FROM Items WHERE category_id IS NULL
UNION ALL SELECT 'Dispatch.zone_id NULLs', COUNT(*) FROM Dispatch_Logs WHERE zone_id IS NULL
UNION ALL SELECT 'Dispatch.vehicle_id NULLs', COUNT(*) FROM Dispatch_Logs WHERE vehicle_id IS NULL
UNION ALL SELECT 'DLI.dispatch_id NULLs', COUNT(*) FROM Dispatch_Line_Items WHERE dispatch_id IS NULL;

-- 3. Foreign Key integrity checks (all should return 0)
SELECT 'DZ -> Users FK' AS fk_check, COUNT(*) AS orphans
FROM Disaster_Zones dz LEFT JOIN Users u ON dz.reported_by = u.user_id WHERE u.user_id IS NULL
UNION ALL
SELECT 'Dispatch -> Zones FK', COUNT(*)
FROM Dispatch_Logs dl LEFT JOIN Disaster_Zones dz ON dl.zone_id = dz.zone_id WHERE dz.zone_id IS NULL
UNION ALL
SELECT 'Dispatch -> Vehicles FK', COUNT(*)
FROM Dispatch_Logs dl LEFT JOIN Vehicles v ON dl.vehicle_id = v.vehicle_id WHERE v.vehicle_id IS NULL
UNION ALL
SELECT 'Dispatch -> Users FK', COUNT(*)
FROM Dispatch_Logs dl LEFT JOIN Users u ON dl.user_id = u.user_id WHERE u.user_id IS NULL
UNION ALL
SELECT 'Items -> Categories FK', COUNT(*)
FROM Items i LEFT JOIN Categories c ON i.category_id = c.category_id WHERE c.category_id IS NULL
UNION ALL
SELECT 'DLI -> Dispatch FK', COUNT(*)
FROM Dispatch_Line_Items dli LEFT JOIN Dispatch_Logs dl ON dli.dispatch_id = dl.dispatch_id WHERE dl.dispatch_id IS NULL
UNION ALL
SELECT 'WI -> Warehouses FK', COUNT(*)
FROM Warehouse_Inventory wi LEFT JOIN Warehouses w ON wi.warehouse_id = w.warehouse_id WHERE w.warehouse_id IS NULL
UNION ALL
SELECT 'WI -> Items FK', COUNT(*)
FROM Warehouse_Inventory wi LEFT JOIN Items i ON wi.item_id = i.item_id WHERE i.item_id IS NULL;
