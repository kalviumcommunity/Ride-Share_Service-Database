-- Insert data into "User" table
INSERT INTO "User" (Email, Name, Password, PhoneNumber, Role)
VALUES
    ('johndoe@example.com', 'John Doe', 'password123', '123-456-7890', 'Customer'),
    ('janedoe@example.com', 'Jane Doe', 'securepwd456', '987-654-3210', 'Customer'),
    ('mikedriver@example.com', 'Mike Driver', 'driverpass', '555-555-5555', 'Driver'),
    ('sarasmith@example.com', 'Sara Smith', 'pass123', '666-666-6666', 'Customer'),
    ('robertjones@example.com', 'Robert Jones', 'pass456', '777-777-7777', 'Customer'),
    ('emilybrown@example.com', 'Emily Brown', 'pwd12345', '888-888-8888', 'Customer'),
    ('davidwilson@example.com', 'David Wilson', 'secret123', '999-999-9999', 'Driver'),
    ('oliviawhite@example.com', 'Olivia White', 'olivia123', '111-111-1111', 'Customer'),
    ('michaelblack@example.com', 'Michael Black', 'mike456', '222-222-2222', 'Driver'),
    ('amysmith@example.com', 'Amy Smith', 'amyspwd', '333-333-3333', 'Customer');

-- Insert data into "Driver" table
INSERT INTO Driver (DriverRating, Name, PhoneNo, UserId, VehicleInfo)
VALUES
    (4.9, 'John Driver', '111-111-1111', 7, 'Toyota Camry'),
    (4.7, 'Mike Driver', '333-333-3333', 8, 'Ford F-150'),
    (4.8, 'David Driver', '999-999-9999', 9, 'Chevrolet Suburban'),
    (4.6, 'Michael Driver', '222-222-2222', 10, 'Honda Civic'),
    (4.5, 'Sara Driver', '666-666-6666', 6, 'Dodge Caravan'),
    (4.4, 'Olivia Driver', '111-111-1111', 7, 'Nissan Altima'),
    (4.3, 'Emily Driver', '888-888-8888', 5, 'Ford Fusion'),
    (4.2, 'Amy Driver', '333-333-3333', 4, 'Chevrolet Malibu'),
    (4.1, 'Robert Driver', '777-777-7777', 3, 'Kia Optima'),
    (4.0, 'Jane Driver', '987-654-3210', 2, 'Toyota Corolla');

-- Insert data into "Ride" table
INSERT INTO Ride (DriverId, RideStartTime, RideEndTime, RideStatus, UserId, PickupLocation, DropoffLocation)
VALUES
    (1, '2023-10-15 08:00:00', '2023-10-15 09:00:00', 'Completed', 1, '123 Main St', '456 Elm St'),
    (2, '2023-10-15 10:00:00', '2023-10-15 11:00:00', 'Completed', 2, '789 Oak St', '101 Pine St'),
    (3, '2023-10-15 09:30:00', '2023-10-15 10:30:00', 'Completed', 3, '555 Maple Rd', '777 Birch Rd'),
    (4, '2023-10-15 12:00:00', '2023-10-15 13:00:00', 'Completed', 4, '999 Cedar Ave', '888 Redwood Dr'),
    (5, '2023-10-15 14:00:00', '2023-10-15 15:00:00', 'Completed', 5, '444 Walnut Ln', '666 Cherry Blvd'),
    (6, '2023-10-15 08:30:00', '2023-10-15 09:30:00', 'Completed', 6, '111 Hillside Dr', '222 Valley Rd'),
    (7, '2023-10-15 10:30:00', '2023-10-15 11:30:00', 'Completed', 7, '333 Riverside Ave', '777 Park Place'),
    (8, '2023-10-15 09:45:00', '2023-10-15 10:45:00', 'Completed', 8, '999 Sunset Dr', '888 Sunrise Ave'),
    (9, '2023-10-15 12:30:00', '2023-10-15 13:30:00', 'Completed', 9, '777 Ocean View', '555 Mountain Rd'),
    (10, '2023-10-15 14:45:00', '2023-10-15 15:45:00', 'Completed', 10, '111 Lakefront Blvd', '444 Riverbank Rd');

-- Insert data into "Payment" table
INSERT INTO Payment (PaymentMethod, PaymentStatus, Price, RiderId)
VALUES
    ('Credit Card', 'Paid', 25.50, 1),
    ('PayPal', 'Paid', 30.00, 2),
    ('Cash', 'Paid', 15.75, 4),
    ('Credit Card', 'Paid', 20.50, 5),
    ('Credit Card', 'Paid', 18.75, 5),
    ('PayPal', 'Paid', 35.00, 6),
    ('Cash', 'Paid', 21.25, 7),
    ('Credit Card', 'Paid', 28.75, 8),
    ('Cash', 'Paid', 19.50, 9),
    ('Credit Card', 'Paid', 26.75, 10);
