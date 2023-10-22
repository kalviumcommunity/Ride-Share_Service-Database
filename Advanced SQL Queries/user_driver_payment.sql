SELECT
    U.Name AS UserName,
    D.Name AS DriverName,
    P.Price AS PaymentAmount,
	P.PaymentStatus
FROM Ride R
JOIN "User" U ON R.UserId = U.UserId
JOIN Driver D ON R.DriverId = D.DriverId
JOIN Payment P ON R.UserId = P.RiderId;
