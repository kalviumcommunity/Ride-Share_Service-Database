CREATE TABLE Driver (
    DriverId INT PRIMARY KEY,
    DriverRating DECIMAL(1),
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
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);

CREATE TABLE Location (
    LocationId INT PRIMARY KEY,
    DropOffLocation VARCHAR(255),
    PickupLocation VARCHAR(255),
    RideId INT, -- Add this column
    Address VARCHAR(255),
     UserId INT,
    FOREIGN KEY (UserId) REFERENCES User(UserId)
    FOREIGN KEY (RideId) REFERENCES Ride(RideId) 
);

CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY,
    DriverId INT,
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(20),
    Price DECIMAL(8, 2),
    UserId INT,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);

CREATE TABLE User (
    UserId INT PRIMARY KEY,
    Email VARCHAR(255),
    Name VARCHAR(255),
    Password VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Role VARCHAR(50)
);
