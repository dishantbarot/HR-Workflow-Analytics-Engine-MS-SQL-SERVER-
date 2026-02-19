
-- Creating the Departments Table

CREATE TABLE DEPARTMENTS (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL,
    budget DECIMAL(18,2) CHECK (budget >= 0),
    created_at DATETIME DEFAULT GETDATE()
);

