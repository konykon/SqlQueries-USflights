SELECT COUNT(*)
FROM Flights;

SELECT Origin, AVG(ArrDelay) AS AvgDelayArrivals, AVG(DepDelay) AS AvgDelayDepartures
FROM Flights
GROUP BY Origin;

SELECT Origin, ColYear, ColMonth, AVG(ArrDelay) AS AvgDelayDepartures
FROM Flights
GROUP BY Origin, ColYear, ColMonth					
ORDER BY Origin ASC, ColYear ASC, ColMonth ASC;

SELECT City, ColYear, ColMonth, AVG(ArrDelay) AS AvgDelayArrivals
FROM Flights INNER JOIN USairports ON IATA = Origin
GROUP BY City, ColYear, ColMonth
ORDER BY City ASC, ColYear ASC, ColMonth ASC;

SELECT UniqueCarrier, ColYear, ColMonth, SUM(Cancelled) AS TotalCancelled
FROM Flights 
GROUP BY UniqueCarrier, ColYear, ColMonth
HAVING SUM(Cancelled)>=1									
ORDER BY TotalCancelled DESC;

SELECT TailNum, SUM(Distance) AS TotalDistance
FROM Flights
GROUP BY TailNum
ORDER BY TotalDistance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS AvgDelayArrivals
FROM Flights
GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10
ORDER BY AvgDelayArrivals DESC
