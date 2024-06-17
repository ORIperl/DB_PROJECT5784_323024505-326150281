WITH Monthly_Sales AS (
    SELECT 
        TO_CHAR(bk.Booking_date, 'MM-YYYY') AS Month_Year,
        COUNT(bk.Booking_id) AS Total_Bookings,
        SUM(t.Ticket_price) AS Total_Revenue
    FROM 
        Booking bk
    JOIN 
        Ticket t ON bk.Ticket_id = t.Ticket_id
    WHERE 
        bk.Booking_date BETWEEN TO_DATE('2023-06-01', 'YYYY-MM-DD') AND TO_DATE('2023-06-30', 'YYYY-MM-DD')
    GROUP BY 
        TO_CHAR(bk.Booking_date, 'MM-YYYY')
)
SELECT 
    Month_Year,
    Total_Bookings,
    Total_Revenue
FROM 
    Monthly_Sales
ORDER BY 
    Month_Year;
