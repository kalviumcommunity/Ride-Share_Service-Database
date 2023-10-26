-- Create the "User" table
CREATE TABLE "User" (
    UserId SERIAL PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Role VARCHAR(50) NOT NULL
);