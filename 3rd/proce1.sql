CREATE OR REPLACE PROCEDURE calculate_total_baggage_weight(ticket_type IN VARCHAR2, total_weight OUT NUMBER)
IS
    CURSOR cur_baggage IS
        SELECT b.Baggage_weight
        FROM Baggage b
        JOIN Ticket t ON b.Ticket_id = t.Ticket_id
        WHERE t.Ticket_type = ticket_type;
    rec_baggage cur_baggage%ROWTYPE;
BEGIN
    total_weight := 0;
    OPEN cur_baggage;
    LOOP
        FETCH cur_baggage INTO rec_baggage;
        EXIT WHEN cur_baggage%NOTFOUND;
        total_weight := total_weight + rec_baggage.Baggage_weight;
    END LOOP;
    CLOSE cur_baggage;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        total_weight := 0;
    WHEN OTHERS THEN
        RAISE;
END;
