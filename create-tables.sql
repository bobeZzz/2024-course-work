CREATE TABLE dbo.Dim_Date
(
    id_date INT IDENTITY NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    day_of_week INT NOT NULL,
    day_period NVARCHAR(50) NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);

CREATE TABLE dbo.Dim_Sandwich
(
    id_sandwich INT IDENTITY NOT NULL,
    name NVARCHAR(255) NOT NULL,
    size NVARCHAR(50) NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);

CREATE TABLE dbo.Dim_Staff
(
    id_staff INT IDENTITY NOT NULL,
    name NVARCHAR(255) NOT NULL,
    role NVARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    staff_experience INT NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);

CREATE TABLE dbo.Dim_Step
(
    id_step INT IDENTITY NOT NULL,
    description NVARCHAR(255) NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);

CREATE TABLE dbo.Fact_Step_Execution_Efficiency
(
    id_fact_step INT IDENTITY NOT NULL,
    id_sandwich_cooked INT NOT NULL,
    id_staff INT NOT NULL,
    id_sandwich INT NOT NULL,
    id_step INT NOT NULL,
    id_date INT NOT NULL,
    duration INT NOT NULL
)
WITH
(
    DISTRIBUTION = HASH(id_staff),
    CLUSTERED COLUMNSTORE INDEX
);