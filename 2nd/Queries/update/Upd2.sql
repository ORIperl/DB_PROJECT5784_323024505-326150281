UPDATE TicketSeller
SET Seller_contact = '9999999999'
WHERE Seller_id IN (
    SELECT Seller_id
    FROM (
        SELECT bk.Seller_id, COUNT(*) AS num_tickets
        FROM Booking bk
        GROUP BY bk.Seller_id
        ORDER BY num_tickets DESC
    )
    WHERE ROWNUM = 1
);
