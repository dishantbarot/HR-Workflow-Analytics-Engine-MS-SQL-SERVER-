
-- CREATE ATTENDANCE TABLE

CREATE TABLE ATTENDANCE (
    attendance_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    check_in TIME,
    check_out TIME,
    status VARCHAR(20)
        CHECK (status IN ('Present','Late','Absent')),

    CONSTRAINT FK_Attendance_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
        ON DELETE CASCADE
);

