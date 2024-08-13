DELIMITER //

CREATE PROCEDURE DeleteBooking (
    IN bookingid INT
)
BEGIN
    DELETE FROM bookings 
    WHERE BookingID = bookingid;
    
    SELECT concat('Booking ', bookingid, ' cancelled') AS Confirmation;
END //

DELIMITER ;

CALL DeleteBooking(9);
