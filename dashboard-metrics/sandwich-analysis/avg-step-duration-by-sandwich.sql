SELECT
    s.name AS sandwich_name,
    st.description AS step_description,
    AVG(f.duration) AS avg_step_duration
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Sandwich s ON f.id_sandwich = s.id_sandwich
JOIN
    Dim_Step st ON f.id_step = st.id_step
GROUP BY
    s.name, st.description
ORDER BY
    avg_step_duration ASC;
