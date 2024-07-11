SELECT 
	Continent
	,SUM(cases_total)
	,SUM(recovered_total)
	,ROUND((CAST(SUM(recovered_total) as decimal)/SUM(cases_total))*100,2) recovered_percentage
FROM Countries
GROUP BY Continent
UNION ALL
SELECT 
	'Overall'
	,SUM(cases_total)
	,SUM(recovered_total)
	,ROUND((CAST(SUM(recovered_total) as decimal)/SUM(cases_total))*100,2) recovered_percentage
FROM Countries