SELECT station, count(*) AS measurements
FROM observations
GROUP BY station
ORDER BY measurements DESC;
