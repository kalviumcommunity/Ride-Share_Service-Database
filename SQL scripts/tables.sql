CREATE TABLE Driver (
    DriverId INT PRIMARY KEY,
    DriverRating DECIMAL(3, 2), -- Adjusted precision and scale
    Name VARCHAR(255),
    PhoneNo VARCHAR(15),
    VehicleInfo VARCHAR(255),
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);

CREATE TABLE Ride (
    RideId INT PRIMARY KEY,
    DriverId INT,
    Price DECIMAL(8, 2),
    RideEndTime DATETIME,
    RideStartTime DATETIME,
    RideStatus VARCHAR(20),
    UserId INT,
    PickupLocation VARCHAR(255),
    DropoffLocation VARCHAR(255),
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);

CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY,
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(20),
    Price DECIMAL(8, 2),
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES User(UserId),
    RideId INT,
    FOREIGN KEY (RideId) REFERENCES Ride(RideId)
);

CREATE TABLE User (
    UserId INT PRIMARY KEY,
    Email VARCHAR(255),
    Name VARCHAR(255),
    Password VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Role VARCHAR(50)
);