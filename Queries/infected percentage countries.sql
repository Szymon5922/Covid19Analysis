SELECT 
	Country
	,Population
	,cases_total
	,ROUND((CAST(cases_total as decimal)/Population)*100,2) infected_percentage
FROM Countries
ORDER BY infected_percentage DESC