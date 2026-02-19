
-- CREATE TRAINING_PROGRAMS TABLE

CREATE TABLE TRAINING_PROGRAMS (
    training_id INT PRIMARY KEY IDENTITY(1,1),
    training_name VARCHAR(150) NOT NULL,
    cost DECIMAL(10,2) CHECK (cost >= 0),
    start_date DATE,
    end_date DATE
);

