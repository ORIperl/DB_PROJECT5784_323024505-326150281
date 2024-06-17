WITH Seller_Info AS (
    SELECT 
        ts.Seller_name,
        SUM(t.Ticket_price) AS Total_Sales_Price,
        COUNT(bk.Ticket_id) AS Tickets_Sold
    FROM 
        TicketSeller ts
    JOIN 
        Booking bk ON ts.Seller_id = bk.Seller_id
    JOIN 
        Ticket t ON bk.Ticket_id = t.Ticket_id
    WHERE 
        bk.Booking_date > TO_DATE('2023-06-18', 'YYYY-MM-DD')
    GROUP BY 
        ts.Seller_name
),
Max_Tickets_Sold AS (
    SELECT 
        MAX(Tickets_Sold) AS Max_Sold
    FROM 
        Seller_Info
)
SELECT 
    si.Seller_name, 
    si.Tickets_Sold,
    si.Total_Sales_Price
FROM 
    Seller_Info si
JOIN 
    Max_Tickets_Sold m ON si.Tickets_Sold = m.Max_Sold
ORDER BY 
    si.Total_Sales_Price DESC;
