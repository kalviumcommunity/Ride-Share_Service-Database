CREATE TABLE Ride (
    RideID SERIAL PRIMARY KEY,
    DriverId INT,
    RideStartTime TIMESTAMP NOT NULL,
    RideEndTime TIMESTAMP NOT NULL,
    RideStatus VARCHAR(50) NOT NULL,
    UserId INT,
    PickupLocation VARCHAR(255) NOT NULL,
    DropoffLocation VARCHAR(255) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (UserId) REFERENCES "User"(UserId)
);
