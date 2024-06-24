CREATE OR REPLACE FUNCTION Count_Passengers_With_Condition(initial IN CHAR)
RETURN NUMBER IS
    passengerCount NUMBER := 0;
    passengerRec Passenger%ROWTYPE;
    CURSOR passengerCursor IS
        SELECT * FROM Passenger WHERE SUBSTR(Passenger_name, 1, 1) = initial;
BEGIN
    OPEN passengerCursor;
    LOOP
        FETCH passengerCursor INTO passengerRec;
        EXIT WHEN passengerCursor%NOTFOUND;
        passengerCount := passengerCount + 1;
    END LOOP;
    CLOSE passengerCursor;

    RETURN passengerCount;
EXCEPTION
    WHEN OTHERS THEN
        RETURN -1;
END;
