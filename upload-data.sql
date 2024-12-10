COPY INTO dbo.Dim_Date
    (id_date, year, month, day_of_week, day_period)
FROM 'https://dvv4lab.dfs.core.windows.net/data-lake-g2-fs/Dim_Date.csv'
WITH
(
    FILE_TYPE = 'CSV',
    MAXERRORS = 0,
    IDENTITY_INSERT = 'ON',
    FIRSTROW = 2
);

COPY INTO dbo.Dim_Sandwich
    (id_sandwich, name, size)
FROM 'https://dvv4lab.dfs.core.windows.net/data-lake-g2-fs/Dim_Sandwich.csv'
WITH
(
    FILE_TYPE = 'CSV',
    MAXERRORS = 0,
    IDENTITY_INSERT = 'ON',
    FIRSTROW = 2
);

COPY INTO dbo.Dim_Staff
    (id_staff, name, role, hire_date, staff_experience)
FROM 'https://dvv4lab.dfs.core.windows.net/data-lake-g2-fs/Dim_Staff.csv'
WITH
(
    FILE_TYPE = 'CSV',
    MAXERRORS = 0,
    IDENTITY_INSERT = 'ON',
    FIRSTROW = 2
);

COPY INTO dbo.Dim_Step
    (id_step, description)
FROM 'https://dvv4lab.dfs.core.windows.net/data-lake-g2-fs/Dim_Step.csv'
WITH
(
    FILE_TYPE = 'CSV',
    MAXERRORS = 0,
    IDENTITY_INSERT = 'ON',
    FIRSTROW = 2
);

COPY INTO dbo.Fact_Step_Execution_Efficiency
    (id_fact_step, id_sandwich_cooked, duration, id_date, id_step, id_sandwich, id_staff)
FROM 'https://dvv4lab.dfs.core.windows.net/data-lake-g2-fs/Fact_Step_Execution_Efficiency.csv'
WITH
(
    FILE_TYPE = 'CSV',
    MAXERRORS = 0,
    IDENTITY_INSERT = 'ON',
    FIRSTROW = 2
);
