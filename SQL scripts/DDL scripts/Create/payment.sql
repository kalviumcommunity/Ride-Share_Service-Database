-- Create the Payment table
CREATE TABLE Payment (
    PaymentID SERIAL PRIMARY KEY,
    PaymentMethod VARCHAR(50) NOT NULL,
    PaymentStatus VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    RiderId INT,
    FOREIGN KEY (RiderId) REFERENCES "User" (UserId)
);
