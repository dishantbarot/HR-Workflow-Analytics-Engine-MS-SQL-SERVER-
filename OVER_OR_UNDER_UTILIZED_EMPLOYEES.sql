
-- WHICH EMPLOYEES ARE OVER OR UNDER UTILIZED

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    SUM(ep.allocation_percentage) AS total_allocation,
    CASE 
        WHEN SUM(ep.allocation_percentage) > 100 THEN 'Over Utilized'
        WHEN SUM(ep.allocation_percentage) < 50 THEN 'Under Utilized'
        ELSE 'Optimal'
    END AS utilization_status
FROM EMPLOYEES e
JOIN EMPLOYEE_PROJECTS ep 
    ON e.employee_id = ep.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY total_allocation DESC;
