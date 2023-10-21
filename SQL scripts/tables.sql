-- Create the Ride table
CREATE TABLE "User" (
    UserId SERIAL PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Role VARCHAR(50) NOT NULL
);
-- Create the Driver table
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
    PaymentID SERIAL PRIMARY KEY,
    PaymentMethod VARCHAR(50) NOT NULL,
    PaymentStatus VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    RiderId INT,
    FOREIGN KEY (RiderId) REFERENCES "User" (UserId)
);



-- Table to delete
CREATE TABLE "delete-table" (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255)
);


DROP TABLE "delete-table";




ALTER TABLE Driver
RENAME COLUMN VehicleDetails TO VehicleInfo;

