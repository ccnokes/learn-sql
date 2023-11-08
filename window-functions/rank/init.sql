CREATE TABLE employee (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  full_name TEXT NOT NULL,
  department TEXT NOT NULL,
  salary REAL NOT NULL
);

INSERT INTO
  employee (full_name, department, salary)
VALUES
  ('Mary', 'SALES', 100000),
  ('Sean', 'IT', 150000),
  ('Peter', 'SALES', 200000),
  ('Lilian', 'SALES', 170000),
  ('Milton', 'IT', 180000),
  ('Mareen', 'ACCOUNTS', 120000),
  ('Airton', 'ACCOUNTS', 110000);