INSERT INTO "User" (Email, Name, Password, PhoneNumber, Role)
VALUES
    ('user1@example.com', 'User 1', 'password1', '1234567890', 'Customer'),
    ('user2@example.com', 'User 2', 'password2', '9876543210', 'Customer'),
    ('user3@example.com', 'User 3', 'password3', '5555555555', 'Driver'),
    ('user4@example.com', 'User 4', 'password4', '6666666666', 'Customer'),
    ('user5@example.com', 'User 5', 'password5', '7777777777', 'Customer');

INSERT INTO Driver (DriverRating, Name, PhoneNo, UserId, VehicleInfo)
VALUES
    (4.5, 'Driver 1', '1111111111', 3, 'Car'),
    (4.0, 'Driver 2', '2222222222', 3, 'Truck'),
    (4.2, 'Driver 3', '3333333333', 3, 'SUV'),
    (4.8, 'Driver 4', '4444444444', 3, 'Motorcycle'),
    (4.6, 'Driver 5', '5555555555', 3, 'Van');

INSERT INTO Ride (DriverId, RideStartTime, RideEndTime, RideStatus, UserId, PickupLocation, DropoffLocation)
VALUES
    (1, '2023-10-15 08:00:00', '2023-10-15 09:00:00', 'Completed', 1, 'Location A', 'Location B'),
    (2, '2023-10-15 10:00:00', '2023-10-15 11:00:00', 'Completed', 2, 'Location C', 'Location D'),
    (3, '2023-10-15 09:30:00', '2023-10-15 10:30:00', 'Completed', 3, 'Location X', 'Location Y'),
    (4, '2023-10-15 12:00:00', '2023-10-15 13:00:00', 'Completed', 4, 'Location M', 'Location N'),
    (5, '2023-10-15 14:00:00', '2023-10-15 15:00:00', 'Completed', 5, 'Location P', 'Location Q');

INSERT INTO Payment (PaymentMethod, PaymentStatus, Price, RiderId)
VALUES
    ('Credit Card', 'Paid', 25.50, 1),
    ('PayPal', 'Paid', 30.00, 2),
    ('Cash', 'Paid', 15.75, 4),
    ('Credit Card', 'Paid', 20.50, 5),
    ('Credit Card', 'Paid', 18.75, 5);