SELECT COUNT(*)
FROM Flights;

SELECT Origin, AVG(ArrDelay) AS avgDelayArrivals, AVG(DepDelay) AS avgDelayDepartures
FROM Flights
GROUP BY Origin;

SELECT Origin, colYear, ColMonth, AVG(ArrDelay) AS avgDelayDepartures
FROM Flights
GROUP BY Origin, ColYear, colMonth					
ORDER BY Origin ASC, colYear ASC, ColMonth ASC;

SELECT City, colYear, ColMonth, AVG(ArrDelay) AS avgDelayArrivals
FROM Flights INNER JOIN USairports ON IATA = Origin
GROUP BY City, ColYear, colMonth
ORDER BY City ASC, colYear ASC, ColMonth ASC;

SELECT UniqueCarrier, colYear, ColMonth, SUM(Cancelled) AS totalCancelled
FROM Flights 
GROUP BY UniqueCarrier, ColYear, colMonth
HAVING SUM(Cancelled)>=1									
ORDER BY totalCancelled DESC;

SELECT TailNum, SUM(Distance) AS totalDistance
FROM Flights
GROUP BY TailNum
ORDER BY totalDistance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM Flights
GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10
ORDER BY AvgDelay DESC
