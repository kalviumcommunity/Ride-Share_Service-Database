CREATE TABLE Driver (
    DriverId SERIAL PRIMARY KEY,
    DriverRating DECIMAL(3, 2),
    Name VARCHAR(255) NOT NULL,
    PhoneNo VARCHAR(20) NOT NULL,
    UserId INT,
    VehicleDetails VARCHAR(255) NOT NULL,
    FOREIGN KEY (UserId) REFERENCES "User" (UserId)
);

-- Create the Ride table
CREATE TABLE Ride (
    RideID SERIAL PRIMARY KEY,
    DriverId INT,
    RideStartTime TIMESTAMP NOT NULL,
    RideEndTime TIMESTAMP NOT NULL,
    RideStatus VARCHAR(50) NOT NULL,
    UserId INT,
    PickupLocation VARCHAR(255) NOT NULL,
    DropoffLocation VARCHAR(255) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver (DriverId),
    FOREIGN KEY (UserId) REFERENCES "User" (UserId)
);

-- Create the Payment table
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