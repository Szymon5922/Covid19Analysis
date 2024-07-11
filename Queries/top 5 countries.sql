SELECT TOP 5 Country, cases_total 
FROM Countries
ORDER BY cases_total DESC

SELECT TOP 5 Country, cases_per_1m_pop
FROM Countries
ORDER BY cases_per_1m_pop DESC