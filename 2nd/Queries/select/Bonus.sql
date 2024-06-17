WITH Daily_Bookings AS (
    SELECT 
        TO_CHAR(b.Booking_date, 'Day') AS Booking_Day, 
        COUNT(b.Booking_id) AS Total_Bookings,
        SUM(t.Ticket_price) AS Total_Revenue
    FROM 
        Booking b
    JOIN 
        Ticket t ON b.Ticket_id = t.Ticket_id
    GROUP BY 
        TO_CHAR(b.Booking_date, 'Day')
)
SELECT 
    Booking_Day, 
    Total_Bookings,
    Total_Revenue
FROM 
    Daily_Bookings
ORDER BY 
        Total_Revenue DESC;
