UPDATE Ticket
SET Ticket_price = Ticket_price * 1.10
WHERE Ticket_id IN (
    SELECT DISTINCT t.Ticket_id
    FROM Ticket t
    JOIN Booking b ON t.Ticket_id = b.Ticket_id
    WHERE b.Booking_date > TO_DATE('2023-07-12', 'YYYY-MM-DD')
    AND t.Ticket_type = 'Single'
);
