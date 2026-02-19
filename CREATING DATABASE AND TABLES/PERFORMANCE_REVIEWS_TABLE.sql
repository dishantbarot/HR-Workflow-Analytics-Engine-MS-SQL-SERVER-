
-- CREATE PERFORMANCE_REVIEWS TABLE

CREATE TABLE PERFORMANCE_REVIEWS (
    review_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    reviewer_id INT NOT NULL,
    review_date DATE NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_cycle VARCHAR(20),

    CONSTRAINT FK_PR_Employee
        FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id),

    CONSTRAINT FK_PR_Reviewer
        FOREIGN KEY (reviewer_id) REFERENCES EMPLOYEES(employee_id)
);

