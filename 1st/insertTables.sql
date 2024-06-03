-- insertTables.sql

-- Insert into Passenger
INSERT INTO Passenger (Passenger_id, Passenger_name, Passenger_phone, Passenger_email)
VALUES (1, 'John Doe', '1234567890', 'john.doe@example.com');

INSERT INTO Passenger (Passenger_id, Passenger_name, Passenger_phone, Passenger_email)
VALUES (2, 'Jane Smith', '0987654321', 'jane.smith@example.com');

-- Insert into TicketSeller
INSERT INTO TicketSeller (Seller_id, Seller_name, Seller_contact)
VALUES (1, 'Alice Johnson', 'alice.johnson@example.com');

INSERT INTO TicketSeller (Seller_id, Seller_name, Seller_contact)
VALUES (2, 'Bob Brown', 'bob.brown@example.com');

-- Insert into Ticket
INSERT INTO Ticket (Ticket_id, Ticket_type, Ticket_price)
VALUES (1, 'Single', 2.50);

INSERT INTO Ticket (Ticket_id, Ticket_type, Ticket_price)
VALUES (2, 'Return', 4.00);

-- Insert into Baggage
INSERT INTO Baggage (Baggage_id, Baggage_Type, Baggage_weight, Ticket_id)
VALUES (1, 'Cabin', 7.5, 1);

INSERT INTO Baggage (Baggage_id, Baggage_Type, Baggage_weight, Ticket_id)
VALUES (2, 'Checked', 15.0, 2);

-- Insert into Booking
INSERT INTO Booking (Booking_id, journey_id, Booking_date, Passenger_id, Seller_id, Ticket_id)
VALUES (1, 101, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 1, 1, 1);

INSERT INTO Booking (Booking_id, journey_id, Booking_date, Passenger_id, Seller_id, Ticket_id)
VALUES (2, 102, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 2, 2, 2);

-- Insert into Payment_Report
INSERT INTO Payment_Report (Payment_id, Payment_amount, Payment_date, Booking_id)
VALUES (1, 2.50, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 1);

INSERT INTO Payment_Report (Payment_id, Payment_amount, Payment_date, Booking_id)
VALUES (2, 4.00, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 2);
