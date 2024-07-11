SELECT 
	Continent
	,SUM(CAST(Population as bigint)) Population
	,SUM(cases_total) cases_total
	,ROUND((SUM(CAST(cases_total as decimal))/SUM(CAST(Population as bigint)))*100,2) infected_percentage
FROM Countries
GROUP BY Continent
UNION ALL
SELECT 
	'Overall'
	,SUM(CAST(Population as bigint)) population
	,SUM(cases_total) cases_total
	,ROUND((CAST(SUM(cases_total) as decimal)/SUM(CAST(Population as bigint)))*100,2) infected_percentage
FROM Countries
ORDER BY infected_percentage DESC 
