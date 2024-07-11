SELECT Continent, SUM(cases_total) cases_total
FROM Countries
GROUP BY Continent
ORDER BY cases_total DESC