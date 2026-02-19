
-- CREATE  SALARY_HISTORY TABLE

CREATE TABLE SALARY_HISTORY (
    salary_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    salary_amount DECIMAL(18,2) NOT NULL CHECK (salary_amount > 0),
    effective_from DATE NOT NULL,
    effective_to DATE NULL,
    increment_percentage DECIMAL(5,2),

    CONSTRAINT FK_Salary_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
        ON DELETE CASCADE
);

