SELECT passenger.Passenger_name, passenger.passenger_email, passenger.passenger_phone
FROM passenger
JOIN booking ON passenger.Passenger_id = booking.Passenger_id
WHERE booking.Booking_id NOT IN (
  SELECT Booking_id
  FROM payment_report
)
ORDER BY passenger.Passenger_name;