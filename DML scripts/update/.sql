-- Update the email of a user with particular UserId 

UPDATE "User"
SET Email = 'newemail@example.com'
WHERE UserId = 2;


-- Update the ride status of all rides with DriverId = 3 to 'Canceled'

UPDATE Ride
SET RideStatus = 'Canceled'
WHERE DriverId = 3;
