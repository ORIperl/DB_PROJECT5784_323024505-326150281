DECLARE
    start_date DATE := TO_DATE('2023-06-06', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2023-12-31', 'YYYY-MM-DD');
    total_revenue NUMBER;
    total_weight NUMBER;
BEGIN
    -- קריאה לפונקציה calculate_total_revenue
    total_revenue := calculate_total_revenue(start_date, end_date);
    DBMS_OUTPUT.PUT_LINE('Total Revenue: ' || total_revenue);

    -- קריאה לפרוצדורה calculate_total_baggage_weight
    calculate_total_baggage_weight('regular', total_weight);
    DBMS_OUTPUT.PUT_LINE('Total Baggage Weight: ' || total_weight);
END;
/
