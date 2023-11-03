-- list all users in the database

SELECT * FROM "User";

-- list user with particular email
SELECT * 
FROM "User"
WHERE Email = 'johndoe@example.com';
