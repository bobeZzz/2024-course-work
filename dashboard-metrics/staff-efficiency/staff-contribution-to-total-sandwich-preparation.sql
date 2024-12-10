SELECT
    st.name AS staff_name,
    SUM(f.duration) AS total_time_contributed,
    d.month
FROM
    Fact_Step_Execution_Efficiency f
JOIN
    Dim_Staff st ON f.id_staff = st.id_staff
JOIN
    Dim_Date d ON f.id_date = d.id_date
GROUP BY
    st.name, d.month
ORDER BY
    d.month, total_time_contributed DESC;
