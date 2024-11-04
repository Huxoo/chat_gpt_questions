WITH RECURSIVE EmployeeHierarchy AS (
    
    SELECT 
        id,
        name,
        manager_id,
        CAST(name AS VARCHAR(255)) AS hierarchy_path,
        1 AS level
    FROM 
        employees
    WHERE 
        manager_id IS NULL  
    UNION ALL


    SELECT 
        e.id,
        e.name,
        e.manager_id,
        CONCAT(hierarchy_path, ' -> ', e.name) AS hierarchy_path,
        level + 1
    FROM 
        employees e
    INNER JOIN 
        EmployeeHierarchy h ON e.manager_id = h.id
)

SELECT 
    id,
    name,
    manager_id,
    hierarchy_path,
    level
FROM 
    EmployeeHierarchy
ORDER BY 
    hierarchy_path;
