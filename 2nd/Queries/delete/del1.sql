DELETE FROM TicketSeller
WHERE Seller_id NOT IN (
    SELECT DISTINCT bk.Seller_id
    FROM Booking bk
    WHERE bk.Booking_date >= ADD_MONTHS(SYSDATE, -12)
);
