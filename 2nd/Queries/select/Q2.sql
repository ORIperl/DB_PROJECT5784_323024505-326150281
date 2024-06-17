SELECT p.Passenger_name, bk.Booking_date, bk.ticket_id
FROM Passenger p
JOIN Booking bk ON p.Passenger_id = bk.Passenger_id
WHERE bk.Booking_date = (
    SELECT bk.Booking_date
    FROM Booking bk
    GROUP BY bk.Booking_date
    ORDER BY COUNT(bk.Ticket_id) DESC
    FETCH FIRST 1 ROWS ONLY
)
ORDER BY bk.Booking_date;
