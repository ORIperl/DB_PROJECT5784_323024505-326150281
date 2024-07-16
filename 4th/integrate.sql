Alter TABLE performance
ADD column TotalCommisions

Alter TABLE performance
rename column seller_name o seller_NICKNAME

Alter TABLE performance
ADD Commission FLOAT

CREATE TABLE EmployeeSeller (
    EmployeeID INT,
    Seller_id NUMBER(38),
    PRIMARY KEY (EmployeeID, Seller_id),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (Seller_id) REFERENCES TicketSeller(Seller_id)
);


UPDATE Position
set jobTitle = 'ticketseller'
where employeeid in (select employeeid FROM employeeseller)


UPDATE Booking b
set b.commission = (
	select t.Ticket_price / 10
	from Ticket ticketseller
	where t.Ticket_id = b.Ticket_id
);


UPDATE performance p
SET P.TOTALCOMMISSION = 
( SELECT COALESCE (SUM(b.COMMISSION), 0) FROM booking b
JOIN employeeseller es ON b.SELLER ID = es.Seller_id
WHERE es.employeeID = p.EMPLOYEEID
)
WHERE p.EMPLOYEEID IN (
SELECT DISTINCT employeeID
FROM employeeseller
);

INSERT INTO TRAININGTYPES (TRAININGNAME, DETAILS, JOBTITLE)
VALUES ('Sales Training', 'training on sales techniques and customer interaction for ticketsellers.', 'ticketseller');

INSERT INTO TRAINING (TRAININGID, TRAININGNAME, NUMOFSTUDENTS, DATEOFTRAINING)
VALUES ('trng103001', 'Sales Training', 50, TO_DATE('2024-07-20', 'YYYY-MM-DD'));

UPDATE participates
SET TRAININGID = 'trng103001'
WHERE EMPLOYEEID IN (SELECT EMPLOYEEID FROM EmployeeSeller);