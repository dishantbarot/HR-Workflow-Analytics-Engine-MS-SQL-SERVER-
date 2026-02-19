
-- Create Leaves Table

CREATE TABLE LEAVES (
    leave_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    leave_type VARCHAR(50),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    leave_status VARCHAR(20)
        CHECK (leave_status IN ('Approved','Pending','Rejected')),

    CONSTRAINT FK_Leave_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
        ON DELETE CASCADE
);

