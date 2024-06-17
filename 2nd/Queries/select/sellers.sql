WITH SellersTicketsCount AS (
    SELECT ts.Seller_id, COUNT(bk.Ticket_id) AS Tickets_Sold
    FROM TicketSeller ts
    JOIN Booking bk ON ts.Seller_id = bk.Seller_id
    GROUP BY ts.Seller_id
)
SELECT ts.Seller_id, ts.Seller_name, stc.Tickets_Sold
FROM TicketSeller ts
JOIN SellersTicketsCount stc ON ts.Seller_id = stc.Seller_id
WHERE stc.Tickets_Sold = (SELECT MAX(Tickets_Sold) FROM SellersTicketsCount);
