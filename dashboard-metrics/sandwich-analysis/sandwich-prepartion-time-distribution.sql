SELECT
    s.name AS sandwich_name,
    s.size AS sandwich_size,
    SUM(f.duration) AS total_preparation_time
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Sandwich s ON f.id_sandwich = s.id_sandwich
GROUP BY
    s.name, s.size
ORDER BY
    total_preparation_time DESC;
