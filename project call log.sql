CREATE DATABASE call_log_database;
USE call_log_database;
CREATE TABLE call_log (
  id INT PRIMARY KEY AUTO_INCREMENT,
  caller_name VARCHAR(100),
  caller_number VARCHAR(20),
  receiver_name VARCHAR(100),
  receiver_number VARCHAR(20),
  duration INT,
  call_datetime DATETIME
);
INSERT INTO call_log (caller_name, caller_number, receiver_name, receiver_number, duration, call_datetime)
VALUES
  ('Ramesh Rai', '1234567890', 'Reema kumari', '9876543210', 120, '2023-07-10 10:30:00'),
  ('Seema Tiwari', '9876543210', 'Sushant Dey', '4567890123', 180, '2023-07-11 14:45:00'),
  ('Harsh Rathi', '4567890123', 'Sneha Singh', '7890123456', 90, '2023-07-12 09:15:00'),
  ('Shila Saini', '5555555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),
('Shila Saini', '5555555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),
('Shalini', '958555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),
('Rahul', '833555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),

('Kunal', '9325555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),

('Sameer', '3415555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),

('Pinki', '5325555555', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00'),

('Plumber', '59839355', 'Vikram Singhla', '1111111111', 240, '2023-07-15 16:30:00');
