
-- Find out who is the highest paid employee in each department

WITH Current_Salary AS (
    SELECT 
        e.employee_id,
        e.first_name,
        e.last_name,
        e.department_id,
        sh.salary_amount,
        RANK() OVER (
            PARTITION BY e.department_id
            ORDER BY sh.salary_amount DESC
        ) AS salary_rank
    FROM EMPLOYEES e
    JOIN SALARY_HISTORY sh 
        ON e.employee_id = sh.employee_id
    WHERE sh.effective_to IS NULL
)

SELECT 
    d.department_name,
    cs.employee_id,
    cs.first_name,
    cs.last_name,
    cs.salary_amount
FROM Current_Salary cs
JOIN DEPARTMENTS d 
    ON cs.department_id = d.department_id
WHERE salary_rank = 1
ORDER BY cs.salary_amount DESC;
