--Filtering from the scheduled depart data time
SELECT *
FROM PortfolioProject.dbo.DelayData$
WHERE scheduleddepartdatetime BETWEEN '2014-01-01' AND '2016-12-31'
ORDER BY scheduleddepartdatetime DESC

--Filtering the latest data from 2014-2016
SELECT *
FROM PortfolioProject.dbo.DelayData$
WHERE year >= 2014
ORDER BY year DESC


--Sorting the top 3 most delayed airline from the paerto diagram

SELECT *
FROM PortfolioProject.dbo.DelayData$
WHERE year >= 2014
AND uniquecarrier IN('WN','DL','OO')
ORDER BY year DESC