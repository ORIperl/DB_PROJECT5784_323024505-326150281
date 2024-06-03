CREATE TABLE Payment_Report
(
  Payment_id NUMBER (38) NOT NULL,
  Payment_date DATE NOT NULL,
  Booking_id NUMBER (38) NOT NULL,
  PRIMARY KEY (Payment_id),
  FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);


-- Select Data
SELECT * FROM Passenger;
SELECT * FROM TicketSeller;
SELECT * FROM Ticket;
SELECT * FROM Baggage;
SELECT * FROM Booking;
SELECT * FROM Payment_Report;
