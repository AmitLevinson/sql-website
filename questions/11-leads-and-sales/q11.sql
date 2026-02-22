-- SQLite seed for interactive-sql (Q11)
-- Creates: leads, sales

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS leads;

CREATE TABLE leads (
  lead_id       INTEGER PRIMARY KEY,
  source        TEXT NOT NULL, -- 'Email', 'Social Media', 'Referral', ...
  created_date  TEXT NOT NULL  -- ISO date: 'YYYY-MM-DD'
);

CREATE TABLE sales (
  sale_id      INTEGER PRIMARY KEY,
  lead_id      INTEGER NOT NULL,
  amount       REAL NOT NULL,
  closed_date  TEXT NOT NULL,  -- ISO date
  FOREIGN KEY (lead_id) REFERENCES leads(lead_id)
);

INSERT INTO leads (lead_id, source, created_date) VALUES
  (1,  'Email',        '2025-01-03'),
  (2,  'Email',        '2025-02-14'),
  (3,  'Email',        '2025-07-21'),
  (4,  'Email',        '2024-11-22'),
  (5,  'Social Media', '2025-01-10'),
  (6,  'Social Media', '2025-03-05'),
  (7,  'Social Media', '2024-12-30'),
  (8,  'Referral',     '2025-06-18'),
  (9,  'Referral',     '2025-10-02'),
  (10, 'Paid Search',  '2025-09-09'),
  (11, 'Email',        '2025-12-31'),
  (12, 'Email',        '2026-01-02'),
  (13, 'Social Media', '2025-05-27'),
  (14, 'Social Media', '2025-08-08'),
  (15, 'Email',        '2025-04-01'),
  (16, 'Paid Search',  '2024-06-20'),
  (17, 'Email',        '2023-12-29'),
  (18, 'Referral',     '2025-02-02'),
  (19, 'Social Media', '2026-03-19'),
  (20, 'Email',        '2024-01-15'),
  (21, 'Social Media', '2025-11-11'),
  (22, 'Email',        '2025-11-29'),
  (23, 'Paid Search',  '2025-03-12'),
  (24, 'Referral',     '2024-07-07'),
  (25, 'Social Media', '2025-04-20');

INSERT INTO sales (sale_id, lead_id, amount, closed_date) VALUES
  (1,  1,  120.00, '2025-01-20'),
  (2,  2,  350.50, '2025-03-01'),
  (3,  3,   75.00, '2026-01-10'),
  (4,  5,  199.99, '2025-02-01'),
  (5,  6,  540.00, '2025-07-30'),
  (6,  7,   80.00, '2025-01-05'),
  (7,  8,  130.00, '2025-09-09'),
  (8,  9,   60.00, '2025-10-10'),
  (9,  10, 900.00, '2025-12-15'),
  (10, 13,  42.00, '2025-06-01'),
  (11, 14,  18.00, '2024-12-31'),
  (12, 15, 260.00, '2025-04-15'),
  (13, 16,  70.00, '2024-08-01'),
  (14, 18, 310.00, '2026-02-02'),
  (15, 21, 111.11, '2025-11-30'),
  (16, 25, 250.00, '2025-05-01');

