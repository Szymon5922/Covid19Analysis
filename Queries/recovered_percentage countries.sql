SELECT 
	Country
	,cases_total
	,recovered_total
	,ROUND((CAST(recovered_total as decimal)/cases_total)*100,2) recovered_percentage
FROM Countries