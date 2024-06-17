SELECT p.Passenger_name, b.Baggage_Type, b.Baggage_weight
FROM Passenger p
JOIN Booking bk ON p.Passenger_id = bk.Passenger_id
JOIN (
    SELECT t.Ticket_id, MAX(b.Baggage_weight) AS Max_Baggage_Weight
    FROM Ticket t
    JOIN Baggage b ON t.Ticket_id = b.Ticket_id
    GROUP BY t.Ticket_id
) bmax ON bk.Ticket_id = bmax.Ticket_id
JOIN Baggage b ON bmax.Ticket_id = b.Ticket_id AND bmax.Max_Baggage_Weight = b.Baggage_weight
ORDER BY b.Baggage_weight DESC;
