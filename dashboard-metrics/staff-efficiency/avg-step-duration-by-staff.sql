SELECT
    st.name AS staff_name,
    d.month,
    AVG(f.duration) AS avg_step_duration
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Staff st ON f.id_staff = st.id_staff
JOIN
    Dim_Date d ON f.id_date = d.id_date
GROUP BY
    st.name, d.month
ORDER BY
    avg_step_duration ASC;
