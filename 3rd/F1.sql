CREATE OR REPLACE FUNCTION calculate_total_revenue(start_date IN DATE, end_date IN DATE)
RETURN NUMBER
IS
    total_revenue NUMBER := 0;
    CURSOR cur_revenue IS
        SELECT SUM(t.Ticket_price) AS TotalRevenue
        FROM Booking b
        JOIN Ticket t ON b.Ticket_id = t.Ticket_id
        WHERE b.Booking_date BETWEEN start_date AND end_date;
BEGIN
    OPEN cur_revenue;
    FETCH cur_revenue INTO total_revenue;
    CLOSE cur_revenue;

    RETURN total_revenue;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE;
END;
