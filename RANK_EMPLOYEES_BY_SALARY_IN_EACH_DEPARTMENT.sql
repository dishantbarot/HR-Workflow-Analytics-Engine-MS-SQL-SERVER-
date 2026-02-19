
-- RANK EMPLOYEES WITHIN EACH DEPARTMENT BY SALARIES

SELECT 
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name,
    sh.salary_amount,
    RANK() OVER (
        PARTITION BY d.department_name
        ORDER BY sh.salary_amount DESC
    ) AS salary_rank
FROM EMPLOYEES e
JOIN SALARY_HISTORY sh 
    ON e.employee_id = sh.employee_id
JOIN DEPARTMENTS d
    ON e.department_id = d.department_id
WHERE sh.effective_to IS NULL
ORDER BY d.department_name, salary_rank;
