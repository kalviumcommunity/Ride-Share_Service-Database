CREATE TABLE Ride (
    RideID INT PRIMARY KEY,
    DriverId INT,
    RideStartTime DATETIME NOT NULL,
    RideEndTime DATETIME NOT NULL,
    RideStatus VARCHAR(50) NOT NULL,
    UserId INT,
    PickupLocation VARCHAR(255) NOT NULL,
    DropoffLocation VARCHAR(255) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);
