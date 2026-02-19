
-- WHAT IS THE AVERAGE CURRENT SALARY PER DEPARTMENT

SELECT 
    d.department_name,
    AVG(sh.salary_amount) AS avg_department_salary
FROM EMPLOYEES e
JOIN SALARY_HISTORY sh 
    ON e.employee_id = sh.employee_id
JOIN DEPARTMENTS d
    ON e.department_id = d.department_id
WHERE sh.effective_to IS NULL
GROUP BY d.department_name
ORDER BY avg_department_salary DESC;
