
-- IDENTIFY EMPLOYEES AT HIGH RISK OF ATTRITION

WITH Latest_Increment AS (
    SELECT 
        employee_id,
        MAX(increment_percentage) AS last_increment
    FROM SALARY_HISTORY
    GROUP BY employee_id
),
Leave_Count AS (
    SELECT 
        employee_id,
        COUNT(*) AS total_leaves
    FROM LEAVES
    GROUP BY employee_id
)

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    pr.rating,
    li.last_increment,
    ISNULL(lc.total_leaves,0) AS total_leaves,
    CASE 
        WHEN pr.rating <= 3 
             AND li.last_increment < 10
             AND ISNULL(lc.total_leaves,0) > 1
        THEN 'High Risk'
        ELSE 'Low Risk'
    END AS attrition_risk
FROM EMPLOYEES e
LEFT JOIN PERFORMANCE_REVIEWS pr 
    ON e.employee_id = pr.employee_id
LEFT JOIN Latest_Increment li 
    ON e.employee_id = li.employee_id
LEFT JOIN Leave_Count lc 
    ON e.employee_id = lc.employee_id;
