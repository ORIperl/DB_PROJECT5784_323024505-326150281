WITH Ticket_Type_Sales AS (
    SELECT 
        ts.Seller_id,
        ts.Seller_name,
        SUM(t.Ticket_price) AS Total_Sales
    FROM 
        TicketSeller ts
    JOIN 
        Booking bk ON ts.Seller_id = bk.Seller_id
    JOIN 
        Ticket t ON bk.Ticket_id = t.Ticket_id
    WHERE 
        t.Ticket_type = 'special'
    GROUP BY 
        ts.Seller_id, ts.Seller_name
)
SELECT 
    tts.Seller_id,
    tts.Seller_name, 
    tts.Total_Sales
FROM 
    Ticket_Type_Sales tts
ORDER BY 
    tts.Total_Sales DESC;
