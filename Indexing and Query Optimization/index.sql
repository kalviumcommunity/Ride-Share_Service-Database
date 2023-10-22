-- Creating indexes
CREATE INDEX user_id_index ON "User"(UserId);
CREATE INDEX driver_id_index ON Driver(DriverId);
CREATE INDEX pickup_location_index ON Ride(PickupLocation);
CREATE INDEX dropoff_location_index ON Ride(DropoffLocation);
CREATE INDEX ride_start_time_index ON Ride(RideStartTime);
CREATE INDEX ride_end_time_index ON Ride(RideEndTime);
