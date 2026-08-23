USE ejercicio_19_adv;

INSERT INTO skydivers (full_name, experience_level, total_jumps, status
) VALUES
('Daniel Carter', 'Advanced', 120, 'Active'),
('Laura Mitchell', 'Intermediate', 65, 'Active'),
('Michael Brooks', 'Expert', 210, 'Active'),
('Sofia Turner', 'Beginner', 8, 'Active'),
('James Wilson', 'Intermediate', 48, 'Active'),
('Emma Anderson', 'Advanced', 95, 'Active');


INSERT INTO instructors ( full_name, certification_level,
    status
) VALUES
('Robert Harris', 'Master Instructor', 'Active'),
('Olivia Martin', 'Senior Instructor', 'Active'),
('William Clark', 'Advanced Instructor', 'Active'),
('Isabella Lewis', 'Senior Instructor', 'Active'),
('Henry Walker', 'Master Instructor', 'Active'),
('Amelia Young', 'Advanced Instructor', 'Active');


INSERT INTO equipment ( equipment_code, equipment_type,
    status
) VALUES
('PAR-001', 'Sport Parachute', 'Available'),
('PAR-002', 'Tandem Parachute', 'Available'),
('PAR-003', 'Sport Parachute', 'Available'),
('PAR-004', 'Tandem Parachute', 'Maintenance'),
('PAR-005', 'Sport Parachute', 'Available'),
('PAR-006', 'Reserve Parachute', 'Available');


INSERT INTO jumps ( skydiver_id, instructor_id, equipment_id, jump_date, altitude, jump_type,
    status
) VALUES
(1, 1, 1, '2026-01-15', 12000, 'Free Fall', 'Completed'),
(2, 2, 2, '2026-02-10', 10000, 'Tandem', 'Completed'),
(3, 1, 3, '2026-02-18', 14000, 'Free Fall', 'Completed'),
(4, 3, 2, '2026-03-05', 9000, 'Tandem', 'Completed'),
(5, 4, 5, '2026-03-20', 11000, 'Free Fall', 'Completed'),
(6, 5, 1, '2026-04-12', 13000, 'Free Fall', 'Completed');