CREATE OR REPLACE VIEW TicketSales_View AS
SELECT 
    ts.Seller_id,
    ts.SELLER_NICKNAME,
    b.Booking_id,
    t.Ticket_id,
    t.Ticket_price,
    t.Ticket_type,
    b.Booking_date
FROM 
    TicketSeller ts
JOIN 
    Booking b ON ts.Seller_id = b.Seller_id
JOIN 
    Ticket t ON b.Ticket_id = t.Ticket_id;


SELECT 
    SELLER_NICKNAME,
    Booking_id,
    Ticket_id,
    Ticket_price,
    Booking_date
FROM 
    TicketSales_View
WHERE 
    SELLER_NICKNAME = 'Moraz';


SELECT 
    SELLER_NICKNAME,
    COUNT(Ticket_id) AS Total_Tickets_Sold,
    SUM(Ticket_price) AS Total_Revenue
FROM 
    TicketSales_View
GROUP BY 
    SELLER_NICKNAME
ORDER BY 
    Total_Revenue DESC;
	
	
CREATE OR REPLACE VIEW Position_Salary_Training_View AS
SELECT 
    p.EMPLOYEEID,
    p.JOBTITLE,
    s.JOBTITLE AS Salary_JobTitle,
    s.SALARYPERHOUR AS Salary,
    tt.TRAININGNAME,
    tt.DETAILS AS Training_Details
FROM 
    POSITION p
LEFT JOIN 
    SALARY s ON p.JOBTITLE = s.JOBTITLE
LEFT JOIN 
    TRAININGTYPES tt ON p.JOBTITLE = tt.JOBTITLE;


SELECT 
    EMPLOYEEID,
    JOBTITLE,
    Salary,
    TRAININGNAME,
    Training_Details,
    (SELECT AVG(Salary) FROM Position_Salary_Training_View) AS Average_Salary,
    (SELECT COUNT(*) FROM Position_Salary_Training_View WHERE Training_Details IS NOT NULL) AS Training_Count
FROM 
    Position_Salary_Training_View;


SELECT 
    EMPLOYEEID,
    JOBTITLE,
    Salary,
    TRAININGNAME,
    Training_Details,
    RANK() OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM 
    Position_Salary_Training_View
WHERE 
    JOBTITLE = 'bus driver'
ORDER BY 
    Salary DESC;
