--you cannot delete a user with UserId = 4 because there are related records in the "Ride" table that reference this user through a foreign key constraint. Foreign key constraints are designed to maintain referential integrity in the database, ensuring that no orphaned records exist in related tables. 

DELETE FROM "User"
WHERE UserId = 4;


-- Delete Related Records First

DELETE FROM Ride
WHERE UserId = 4;

DELETE FROM "User"
WHERE UserId = 4;

