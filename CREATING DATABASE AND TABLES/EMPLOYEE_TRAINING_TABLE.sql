
-- Create EMPLOYEE_TRAINING TABLE

CREATE TABLE EMPLOYEE_TRAINING (
    employee_id INT NOT NULL,
    training_id INT NOT NULL,
    completion_status VARCHAR(20)
        CHECK (completion_status IN ('Completed','In Progress','Not Started')),
    score DECIMAL(5,2),

    CONSTRAINT PK_Employee_Training 
        PRIMARY KEY (employee_id, training_id),

    CONSTRAINT FK_ET_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_ET_Training
        FOREIGN KEY (training_id) REFERENCES TRAINING_PROGRAMS(training_id)
        ON DELETE CASCADE
);

