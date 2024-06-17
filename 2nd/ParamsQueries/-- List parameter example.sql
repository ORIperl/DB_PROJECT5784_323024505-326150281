SELECT 
    t.Ticket_type, 
    AVG(bg.Baggage_weight) AS AvgBaggageWeight,
    AVG(t.Ticket_price) AS AvgTicketPrice
FROM 
    Ticket t
JOIN 
    Baggage bg ON t.Ticket_id = bg.Ticket_id
WHERE 
    t.Ticket_type IN ('regular','special')
GROUP BY 
    t.Ticket_type
ORDER BY 
    AvgBaggageWeight DESC;
