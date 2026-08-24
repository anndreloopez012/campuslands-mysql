USE ejercicio_20_adv;

INSERT INTO clients (full_name, phone, email
) VALUES
('Daniel Carter', '3001234567', 'daniel@email.com'),
('Laura Mitchell', '3012345678', 'laura@email.com'),
('Michael Brooks', '3023456789', 'michael@email.com'),
('Sofia Turner', '3034567890', 'sofia@email.com'),
('James Wilson', '3045678901', 'james@email.com'),
('Emma Anderson', '3056789012', 'emma@email.com');


INSERT INTO tattoo_artists (full_name, specialty, experience_years
) VALUES
('Robert Harris', 'Realism', 8),
('Olivia Martin', 'Traditional', 6),
('William Clark', 'Blackwork', 10),
('Isabella Lewis', 'Watercolor', 5),
('Henry Walker', 'Japanese', 12),
('Amelia Young', 'Minimalist', 4);


INSERT INTO appointments (client_id, artist_id, appointment_date, appointment_time, 
tattoo_style,status,price) VALUES
(1, 1, '2026-08-25', '10:00:00', 'Realism', 'Scheduled', 450000.00),
(2, 2, '2026-08-25', '14:00:00', 'Traditional', 'Completed', 280000.00),
(3, 3, '2026-08-26', '11:00:00', 'Blackwork', 'Scheduled', 350000.00),
(4, 4, '2026-08-27', '15:00:00', 'Watercolor', 'Cancelled', 300000.00),
(5, 5, '2026-08-28', '09:00:00', 'Japanese', 'Scheduled', 600000.00),
(6, 6, '2026-08-29', '16:00:00', 'Minimalist', 'Completed', 180000.00);