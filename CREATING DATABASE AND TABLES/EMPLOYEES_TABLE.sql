
-- CREATE EMPLOYEES TABLE

CREATE TABLE EMPLOYEES (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    hire_date DATE NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male','Female','Other')),
    department_id INT NOT NULL,
    job_id INT NOT NULL,
    manager_id INT NULL,
    employment_status VARCHAR(20) DEFAULT 'Active'
        CHECK (employment_status IN ('Active','Resigned','On Leave')),

    CONSTRAINT FK_Employee_Department 
        FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id),

    CONSTRAINT FK_Employee_Job
        FOREIGN KEY (job_id) REFERENCES JOBS(job_id),

    CONSTRAINT FK_Employee_Manager
        FOREIGN KEY (manager_id) REFERENCES EMPLOYEES(employee_id)
);

