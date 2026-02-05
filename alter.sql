-- Use the database
USE touhid;

-- ================================
-- 1) Add a new column at the end
-- ================================
ALTER TABLE students
ADD age INT;

-- =========================================
-- 2) Add a new column after a specific column
-- =========================================
ALTER TABLE students
ADD email VARCHAR(100) AFTER name;

-- ================================
-- 3) Add a new column at first position
-- ================================
ALTER TABLE students
ADD roll INT FIRST;

-- =====================================
-- 4) Modify datatype of an existing column
-- (column name same থাকবে)
-- =====================================
ALTER TABLE students
MODIFY dept VARCHAR(30);

-- =================================================
-- 5) Change column name + datatype
-- (old name -> new name)
-- =================================================
ALTER TABLE students
CHANGE dept department VARCHAR(50);

-- ================================
-- 6) Add PRIMARY KEY
-- ================================
ALTER TABLE students
ADD PRIMARY KEY (id);

-- ======================================
-- 7) Add NOT NULL constraint to a column
-- ======================================
ALTER TABLE students
MODIFY name VARCHAR(50) NOT NULL;

-- ================================
-- 8) Drop (delete) a column
-- ================================
ALTER TABLE students
DROP COLUMN age;

-- ================================
-- 9) See final table structure
-- ================================
DESCRIBE students;
