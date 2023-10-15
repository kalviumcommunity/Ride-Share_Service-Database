--you cannot delete a user with UserId = 4 because there are related records in the "Ride" table that reference this user through a foreign key constraint. Foreign key constraints are designed to maintain referential integrity in the database, ensuring that no orphaned records exist in related tables. 

DELETE FROM "User"
WHERE UserId = 4;


-- Delete Related Records First

DELETE FROM Ride
WHERE UserId = 4;

DELETE FROM "User"
WHERE UserId = 4;

-- optionally
-- 1.
-- Adjust the Foreign Key Constraint
-- You can modify the foreign key constraint in the "Ride" table to allow cascading deletes. However, this should be done with caution, as it will automatically delete the related records in the "Ride" table when the user is deleted. Here's how to define a cascading foreign key 

-- 2. 
--Update the Foreign Key Value
-- If it's appropriate to do so, you can update the foreign key values in the "Ride" table to a different user or set them to NULL (if allowed) before deleting the user


