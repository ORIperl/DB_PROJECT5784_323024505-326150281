DECLARE
    initial CHAR := 'Z'; -- אות התחלתית לשם הנוסע
    passengerCount NUMBER;
BEGIN
    -- קריאה לפונקציה Count_Passengers_With_Condition
    passengerCount := Count_Passengers_With_Condition(initial);
    
    -- הדפסת התוצאה
    DBMS_OUTPUT.PUT_LINE('Number of passengers with names starting with ' || initial || ': ' || passengerCount);
      -- Call the Calculate_Total_Sales procedure
    Calculate_Total_Sales;
    
    
END;
/