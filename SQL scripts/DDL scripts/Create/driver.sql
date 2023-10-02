CREATE TABLE Driver (
    DriverId INT PRIMARY KEY,
    DriverRating DECIMAL(3, 2),
    Name VARCHAR(255) NOT NULL,
    PhoneNo VARCHAR(20) NOT NULL,
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);
