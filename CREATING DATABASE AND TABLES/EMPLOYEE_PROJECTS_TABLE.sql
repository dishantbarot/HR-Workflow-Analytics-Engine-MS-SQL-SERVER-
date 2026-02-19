
-- CREATE TABLE EMPLOYEE_PROJECTS

CREATE TABLE EMPLOYEE_PROJECTS (
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    allocation_percentage DECIMAL(5,2) CHECK (allocation_percentage BETWEEN 0 AND 100),
    role_in_project VARCHAR(100),
    assigned_date DATE DEFAULT GETDATE(),

    CONSTRAINT PK_Employee_Projects 
        PRIMARY KEY (employee_id, project_id),

    CONSTRAINT FK_EP_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_EP_Project
        FOREIGN KEY (project_id) REFERENCES PROJECTS(project_id)
        ON DELETE CASCADE
);

