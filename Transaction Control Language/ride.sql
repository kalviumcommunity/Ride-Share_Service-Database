BEGIN;

-- create a checkpoint

SAVEPOINT ride_request_savepoint;

INSERT INTO Ride (DriverId, RideStartTime, RideEndTime, RideStatus, UserId, PickupLocation, DropoffLocation)
VALUES (999, '2023-10-22 10:00:00', '2023-10-22 11:00:00', 'Pending', 1, 'Location A', 'Location B');

-- wait for payment to be processed

-- if successful, commit the transaction    
COMMIT;

-- if not, rollback to the savepoint
ROLLBACK TO SAVEPOINT ride_request_savepoint;
