CREATE OR REPLACE PROCEDURE Calculate_Total_Sales IS
    CURSOR cur_ticket IS
        SELECT Ticket_type, SUM(Ticket_price) AS Total_Sales
        FROM Ticket
        GROUP BY Ticket_type;
    
    rec_ticket cur_ticket%ROWTYPE;
    new_price NUMBER;
BEGIN
    OPEN cur_ticket;
    LOOP
        FETCH cur_ticket INTO rec_ticket;
        EXIT WHEN cur_ticket%NOTFOUND;

        -- Set new price based on ticket type
        CASE rec_ticket.Ticket_type
            WHEN 'regular' THEN
                new_price := 10;
            WHEN 'special' THEN
                new_price := 15;
            WHEN 'handicapped' THEN
                new_price := 5;
            ELSE
                new_price := rec_ticket.Total_Sales / 100; -- Default price if type doesn't match
        END CASE;

        -- Update ticket prices
        UPDATE Ticket
        SET Ticket_price = new_price
        WHERE Ticket_type = rec_ticket.Ticket_type;

        DBMS_OUTPUT.PUT_LINE('Ticket Type: ' || rec_ticket.Ticket_type || 
                             ', Total Sales: ' || rec_ticket.Total_Sales || 
                             ', New Price: ' || new_price);
    END LOOP;
    CLOSE cur_ticket;
    
    DBMS_OUTPUT.PUT_LINE('Total sales calculated and ticket prices updated successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
