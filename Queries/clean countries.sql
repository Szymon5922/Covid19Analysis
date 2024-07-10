SET ANSI_WARNINGS OFF;

BEGIN TRANSACTION;

BEGIN TRY
    EXEC sp_rename 'Countries', 'Countries_raw';

    CREATE TABLE [Covid].[dbo].[Countries] (
        iso_code VARCHAR(3) NOT NULL,
        Country NVARCHAR(255),
        Population INT,
        Continent NVARCHAR(255),
        cases_total INT,
        deaths_total INT,
        recovered_total INT,
        cases_per_1m_pop INT,
        deaths_per_1m_pop INT,
        death_percentage DECIMAL(5, 2)
		CONSTRAINT PK_countries PRIMARY KEY (iso_code)
    );

    INSERT INTO [Covid].[dbo].[Countries] (
        iso_code, 
        Country, 
        Population, 
        Continent, 
        cases_total, 
        deaths_total, 
        recovered_total, 
        cases_per_1m_pop, 
        deaths_per_1m_pop, 
        death_percentage
    )
    SELECT
        [ISO 3166-1 alpha-3 CODE] as iso_code, 
        Country,
        Population,
        Continent,
        [Total Cases] as cases_total,
        [Total Deaths] as deaths_total,
        [Total Cases]-[Total Deaths] as recovered_total,
        [Total Cases/1M pop] as cases_per_1m_pop,
        [Total Deaths/1M pop] as deaths_per_1m_pop,
        ROUND([Death percentage], 2) as death_percentage
    FROM [Covid].[dbo].[Countries_raw];

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;

END CATCH;

SET ANSI_WARNINGS ON;