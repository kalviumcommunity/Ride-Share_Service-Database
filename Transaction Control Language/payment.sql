BEGIN;

INSERT INTO Payment (PaymentMethod, PaymentStatus, Price, RiderId)
VALUES ('Credit Card', 'Paid', 20.00, 1);

COMMIT;