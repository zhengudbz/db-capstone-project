insert into customers
value (1,'Jerry', 'abc@abc.com'),
(2,'Nancy', 'nan@abc.com'),
(3,'Sally', 'sal@abc.com');

insert into staff
value (1,'David', 'Waiter', 60000),
(2,'Amy', 'Waitress', 55000),
(3,'Livy', 'Supervisor', 70000);


insert into bookings
value (1,'2022-10-10',5,1,'2022-10-10',3),
(2,'2022-11-12',3,3,'2022-11-12',1),
(3,'2022-10-11',2,2,'2022-10-11',1),
(4,'2022-10-12',2,1,'2022-10-12',2);

DELIMITER //

CREATE PROCEDURE CheckBooking (
    IN bookingDate DATE,
    IN tableNumber INT
)
BEGIN
    DECLARE bookingStatus VARCHAR(20);

    SELECT CASE
        WHEN COUNT(*) > 0 THEN 'Booked'
        ELSE 'Available'
    END INTO bookingStatus
    FROM bookings
    WHERE Date = bookingDate AND TableNum = tableNumber;

    SELECT bookingStatus AS Status;
END //

DELIMITER ;

CALL CheckBooking('2022-10-10', 5);
