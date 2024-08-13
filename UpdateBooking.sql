DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN bookingid INT,
	IN bookingDate DATE
)
BEGIN
    UPDATE bookings 
    SET Date = bookingDate, BookingSlot = bookingDate
    WHERE BookingID = bookingid;
    
    SELECT concat('Booking ', bookingid, ' updated') AS Confirmation;
END //

DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");
