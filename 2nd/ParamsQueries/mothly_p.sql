-- Prompt for the month as a number from 01 to 12
-- This will prompt the user to input a month in MM format
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
        TO_CHAR(bk.Booking_date, 'MM') = '&selected_month'
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
