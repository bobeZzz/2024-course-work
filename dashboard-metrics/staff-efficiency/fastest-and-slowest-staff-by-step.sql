SELECT
    st.name AS staff_name,
    d.month,
    s.description AS step_description,
    MIN(f.duration) AS fastest_step_duration,
    MAX(f.duration) AS slowest_step_duration
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Staff st ON f.id_staff = st.id_staff
JOIN
    Dim_Date d ON f.id_date = d.id_date
JOIN
    Dim_Step s ON f.id_step = s.id_step
GROUP BY
    st.name, d.month, s.description
ORDER BY
    d.month, st.name, s.description;
