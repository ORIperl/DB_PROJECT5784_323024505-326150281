DELETE FROM Passenger
WHERE Passenger_id NOT IN (
    SELECT DISTINCT bk.Passenger_id
    FROM Booking bk
    WHERE bk.Booking_date >= TO_DATE('2023-07-12', 'YYYY-MM-DD')
)
AND Passenger_id NOT IN (
    SELECT DISTINCT bk.Passenger_id
    FROM Booking bk
    JOIN Baggage b ON bk.Ticket_id = b.Ticket_id
);
