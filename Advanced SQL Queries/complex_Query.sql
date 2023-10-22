SELECT
    R.RideID AS RideID,
    U.Name AS UserName,
    U.Email AS UserEmail,
    D.Name AS DriverName,
    P.PaymentStatus AS PaymentStatus,
    P.Price AS Amount
FROM Ride R
JOIN "User" U ON R.UserId = U.UserId
JOIN Driver D ON R.DriverId = D.DriverId
LEFT JOIN Payment P ON R.UserId = P.RiderId;
