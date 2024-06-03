CREATE TABLE Passenger
(
  Passenger_id NUMBER (38) NOT NULL,
  Passenger_name VARCHAR2 (255) NOT NULL,
  Passenger_phone VARCHAR2 (15) NOT NULL,
  Passenger_email VARCHAR2 (255) NOT NULL,
  PRIMARY KEY (Passenger_id)
);

CREATE TABLE TicketSeller
(
  Seller_id NUMBER (38) NOT NULL,
  Seller_name VARCHAR2 (255) NOT NULL,
  Seller_contact VARCHAR2 (255) NOT NULL,
  PRIMARY KEY (Seller_id)
);

CREATE TABLE Ticket
(
  Ticket_id NUMBER (38) NOT NULL,
  Ticket_type VARCHAR2 (255) NOT NULL,
  Ticket_price FLOAT NOT NULL,
  PRIMARY KEY (Ticket_id)
);

CREATE TABLE Baggage
(
  Baggage_id NUMBER (38) NOT NULL,
  Baggage_Type VARCHAR2(255) NOT NULL,
  Baggage_weight FLOAT NOT NULL,
  Ticket_id NUMBER (38) NOT NULL,
  PRIMARY KEY (Baggage_id),
  FOREIGN KEY (Ticket_id) REFERENCES Ticket(Ticket_id)
);

CREATE TABLE Booking
(
  Booking_id NUMBER (38) NOT NULL,
  journey_id NUMBER (38) NOT NULL,
  Booking_date DATE NOT NULL,
  Passenger_id NUMBER (38) NOT NULL,
  Seller_id NUMBER (38) NOT NULL,
  Ticket_id NUMBER (38) NOT NULL,
  PRIMARY KEY (Booking_id),
  FOREIGN KEY (Passenger_id) REFERENCES Passenger(Passenger_id),
  FOREIGN KEY (Seller_id) REFERENCES TicketSeller(Seller_id),
  FOREIGN KEY (Ticket_id) REFERENCES Ticket(Ticket_id)
);

CREATE TABLE Payment_Report
(
  Payment_id NUMBER (38) NOT NULL,
  Payment_amount FLOAT NOT NULL,
  Payment_date DATE NOT NULL,
  Booking_id NUMBER (38) NOT NULL,
  PRIMARY KEY (Payment_id),
  FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);
