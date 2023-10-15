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