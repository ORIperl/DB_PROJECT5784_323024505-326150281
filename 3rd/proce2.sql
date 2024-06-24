CREATE OR REPLACE PROCEDURE Calculate_Total_Sales IS
    CURSOR cur_ticket_type IS
        SELECT DISTINCT Ticket_type
        FROM Ticket;
    rec_ticket_type cur_ticket_type%ROWTYPE;
    total_sales NUMBER;
BEGIN
    OPEN cur_ticket_type;
    LOOP
        FETCH cur_ticket_type INTO rec_ticket_type;
        EXIT WHEN cur_ticket_type%NOTFOUND;

        SELECT SUM(Ticket_price) INTO total_sales
        FROM Ticket
        WHERE Ticket_type = rec_ticket_type.Ticket_type;

        DBMS_OUTPUT.PUT_LINE('Ticket Type: ' || rec_ticket_type.Ticket_type || ', Total Sales: ' || total_sales);
    END LOOP;
    CLOSE cur_ticket_type;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
