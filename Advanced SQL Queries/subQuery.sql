
SELECT
    D.DriverId,
    D.Name AS DriverName,
    D.DriverRating
FROM Driver D
WHERE D.DriverRating > (
    SELECT AVG(DriverRating)
    FROM Driver
);
