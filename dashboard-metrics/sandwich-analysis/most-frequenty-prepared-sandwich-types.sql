SELECT
    s.name AS sandwich_name,
    s.size AS sandwich_size,
    COUNT(DISTINCT f.id_sandwich_cooked) AS times_prepared
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Sandwich s ON f.id_sandwich = s.id_sandwich
GROUP BY
    s.name, s.size
ORDER BY
    times_prepared DESC;
