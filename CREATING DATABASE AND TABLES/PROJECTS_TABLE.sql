
-- CREATE TABLE PROJECTS

CREATE TABLE PROJECTS (
    project_id INT PRIMARY KEY IDENTITY(1,1),
    project_name VARCHAR(150) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NULL,
    budget DECIMAL(18,2) CHECK (budget >= 0),
    department_id INT NOT NULL,

    CONSTRAINT FK_Project_Department
        FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id)
);

