-- NOT NULL constraint and DEFAULT constraint for a field in the Passenger table
ALTER TABLE Passenger
MODIFY Passenger_name VARCHAR2(255) NOT NULL,

-- CHECK constraint for a field in the TicketSeller table
ALTER TABLE TicketSeller
ADD CONSTRAINT check_seller_contact
CHECK (LENGTH(Seller_contact) <= 20);

-- CHECK constraint for a field in the Ticket table
ALTER TABLE Ticket
ADD CONSTRAINT CHK_Ticket_Price_Positive CHECK (Ticket_price > 0);

-- CHECK constraint for a field in the Baggage table
ALTER TABLE Baggage
ADD CONSTRAINT check_baggage_weight
CHECK (Baggage_weight >= 0);

ALTER TABLE Booking
ADD CONSTRAINT UC_Booking_JourneyID UNIQUE (journey_id);

-- CHECK constraint for a field in the table
ALTER TABLE Payment_Report
ADD CONSTRAINT CHK_p_Positive CHECK (p_id > 0);
