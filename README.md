# 🏢 Enterprise HR Workforce Analytics System
### SQL Server | Advanced SQL | Relational Database Design | Workforce Intelligence

---

## ⭐ Project Overview

This project is a fully normalized Enterprise HR Workforce Analytics system built using Microsoft SQL Server.  
It simulates a real-world corporate HR database and performs advanced analytics on workforce performance, salary growth, project allocation, training impact, and attrition risk.

The system is designed to demonstrate strong SQL fundamentals, relational modeling expertise, and business-driven analytics thinking.

---

# 📌 S - Situation

Organizations often struggle to gain structured insights from HR data spread across multiple systems.  
Key questions such as:

- Who are the highest paid employees?
- Are high performers rewarded fairly?
- Which employees are at risk of attrition?
- Is workforce allocation optimized?
- How does training impact performance?

require well-designed relational architecture and analytical querying.

---

# 🎯 T - Task

Design and implement a scalable HR relational database system from scratch that:

- Follows 3NF normalization principles
- Captures employee hierarchy (self-referencing)
- Tracks salary history over time
- Supports many-to-many project allocation
- Enables workforce behavioral analytics
- Provides interview-level SQL analytical solutions

---

# ⚙ A - Action

### 🧱 1. Database Design
- Designed ER diagram with 11 interrelated tables
- Implemented self-referencing employee-manager hierarchy
- Created bridge tables for many-to-many relationships
- Applied constraints (PK, FK, CHECK, UNIQUE)
- Used SQL Server optimized data types

### 📊 2. Tables Created
- EMPLOYEES
- DEPARTMENTS
- JOBS
- SALARY_HISTORY
- PROJECTS
- EMPLOYEE_PROJECTS
- TRAINING_PROGRAMS
- EMPLOYEE_TRAINING
- PERFORMANCE_REVIEWS
- ATTENDANCE
- LEAVES

### 📈 3. Data Population
- Inserted realistic HR dataset
- 30+ employees
- Salary increment history tracking
- Multi-project allocation
- Performance reviews
- Attendance and leave data

### 🧠 4. Advanced SQL Analytics Implemented

✔ Highest paid employee per department  
✔ Average salary per department  
✔ Department-wise salary ranking  
✔ Attrition risk detection model  
✔ Workforce utilization analysis  

Technologies Used:
- SQL Server
- CTEs
- Window Functions (RANK, PARTITION BY)
- CASE logic
- Aggregations
- Multi-table joins

---

# 📊 R - Results

The system successfully enables:

- Workforce salary distribution insights
- Performance vs compensation analysis
- Attrition risk scoring logic
- Department cost analysis
- Project utilization tracking
- HR behavioral analytics

This project demonstrates strong SQL proficiency, business analytics thinking, and relational database design expertise.

---

# 🚀 Key SQL Concepts Demonstrated

- Third Normal Form (3NF)
- Self Joins (Hierarchy modeling)
- CTE (Common Table Expressions)
- Window Functions (RANK, DENSE_RANK)
- Aggregate Functions
- CASE-based business modeling
- Multi-table joins
- Data integrity constraints


# 📂 Project Structure

