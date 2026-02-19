
-- Create Jobs Table

CREATE TABLE JOBS (
    job_id INT PRIMARY KEY IDENTITY(1,1),
    job_title VARCHAR(100) NOT NULL,
    min_salary DECIMAL(18,2) CHECK (min_salary >= 0),
    max_salary DECIMAL(18,2) ,
    job_level VARCHAR(50) NOT NULL
);

