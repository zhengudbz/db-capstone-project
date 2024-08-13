DELIMITER //

CREATE PROCEDURE AddBooking (
    IN bookingid INT,
    IN customerid INT,
    IN tableNumber INT,
	IN bookingDate DATE
)
BEGIN
    INSERT INTO bookings 
    Value (bookingid, bookingDate, tableNumber, customerid, bookingDate);
    
    SELECT 'New booking added' AS Confirmation;
END //

DELIMITER ;

CALL AddBooking(9, 3, 4, "2022-12-30");
