CREATE TABLE `hotel_managment_system`.`employee` (
  `emp_id` varchar(45) NOT NULL,
  `emp_name` VARCHAR(45) NULL,
  `age` int NULL,
  `salary` int NULL,
  `position` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`));
CREATE table `hotel_managment_system`.`guest` (
  `guest_id` varchar(45) NOT NULL,
   `emp_id` varchar(45) NOT NULL,
  `guest_name` VARCHAR(45) NULL,
  `mail_id` VARCHAR(45) NULL,
  `purpose_of_visit` VARCHAR(45) NULL,
  `nationality` VARCHAR(45) NULL,
  `age` int NULL,
  PRIMARY KEY (`guest_id`),
  foreign key (emp_id) references employee(emp_id)) ;
  
  CREATE table `hotel_managment_system`.`room` (
  `room_no` varchar(20) NOT NULL,
  `emp_id` varchar(45) NOT NULL,
 `guest_id` varchar(45) NOT NULL,
  `capacity` INT NOT NULL,
  `cost` int NULL,
  `room_type` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
   PRIMARY KEY (`room_no`),
  foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));
  
  CREATE table `hotel_managment_system`.`reservation` (
  `name` varchar(45) NOT NULL,
  `guest_id` varchar(45)  not NULL,
   `emp_id` varchar(45) NOT NULL,
  `check_in_date` date  NULL,
  `check_out_date` date NULL,
  `cost` int NULL,
  `no_of_days_of_stay` int NULL,
   PRIMARY KEY (`name`),
  foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));
  
CREATE table `hotel_managment_system`.`conference and function` (
  `conference_id` varchar(45) NOT NULL,
  `guest_id` varchar(45) not NULL,
   `emp_id` varchar(45) NOT NULL,
  `theme` varchar(45)  NULL,
 `type` varchar(45)  NULL,
 `organizers` varchar(45)  NULL,
 `cost` int null,
 `no_of_attendees` int null,
     PRIMARY KEY (`conference_id`),
  foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));

CREATE table `hotel_managment_system`.`services` (
   `guest_id` varchar(45) not NULL,
   `emp_id` varchar(45) NOT NULL,
   `service_id` varchar(45) NOT NULL,
  `service_type` varchar(45)  NULL,
 `location` varchar(45)  NULL,
 `cost` int null,
PRIMARY KEY (`service_id`),
  foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));

CREATE table `hotel_managment_system`.`services made` (
   `guest_id` varchar(45) not NULL,
   `emp_id` varchar(45) NOT NULL,
   `no_of_services` int NOT NULL,
    foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));

CREATE table `hotel_managment_system`.`food and bevarages` (
   `guest_id` varchar(45) not NULL,
   `emp_id` varchar(45) NOT NULL,
   `type`varchar(45) NOT NULL,
  `cooking_method` varchar(45)  NULL,
 `flavour` varchar(45)  NULL,
 `quantity` int null,
  foreign key (emp_id) references employee(emp_id),
  foreign key (guest_id) references guest(guest_id));


INSERT INTO employee (emp_id, emp_name, age, salary, position)
VALUES
('emp_1', 'Rahul', 30, 50000, 'Manager', manager_1),
('emp_2', 'Amit', 28, 40000, 'Receptionist', manager_2),
('emp_3', 'Sandeep', 25, 35000, 'Housekeeper'),
('emp_4', 'Vikram', 32, 55000, 'Chef', manager_2),
('emp_5', 'Rajesh', 26, 38000, 'Waiter'),
('emp_6', 'Arun', 29, 42000, 'Waiter', manager_1),
('emp_7', 'Manish', 27, 39000, 'Receptionist', manager_2),
('emp_8', 'Ankur', 31, 52000, 'Manager', manager_2),
('emp_9', 'Sunil', 33, 58000, 'Housekeeper', manager_1),
('emp_10', 'Rohit', 24, 34000, 'Chef', manager_2);

INSERT INTO guest (guest_id, emp_id, guest_name, mail_id, purpose_of_visit, nationality, age)
VALUES
('guest_1', 'emp_2', 'Suresh Kumar', 'suresh@gmail.com', 'Business', 'Indian', 35),
('guest_2', 'emp_3', 'Anil Verma', 'anil@gmail.com', 'Tourism', 'Indian', 28),
('guest_3', 'emp_4', 'Prakash Singh', 'prakash@gmail.com', 'Conference', 'Indian', 40),
('guest_4', 'emp_1', 'Alok Sharma', 'alok@gmail.com', 'Leisure', 'Indian', 45),
('guest_5', 'emp_5', 'Amit Patel', 'amit@gmail.com', 'Wedding', 'Indian', 30),
('guest_6', 'emp_7', 'Sanjay Singh', 'sanjay@gmail.com', 'Business', 'Indian', 40),
('guest_7', 'emp_9', 'Vijay Kumar', 'vijay@gmail.com', 'Tourism', 'Indian', 32),
('guest_8', 'emp_10', 'Gaurav Sharma', 'gaurav@gmail.com', 'Conference', 'Indian', 29),
('guest_9', 'emp_6', 'Mohan Singh', 'mohan@gmail.com', 'Leisure', 'Indian', 50),
('guest_10', 'emp_8', 'Rajeev Verma', 'rajeev@gmail.com', 'Business', 'Indian', 38);

-- Room table
INSERT INTO room (room_no, emp_id, guest_id, capacity, cost, room_type, status)
VALUES
('room_101', 'emp_2', 'guest_1', 2, 2000, 'Deluxe', 'Occupied'),
('room_102', 'emp_3', 'guest_2', 1, 1500, 'Standard', 'Vacant'),
('room_103', 'emp_4', 'guest_3', 4, 3000, 'Suite', 'Occupied'),
('room_104', 'emp_1', 'guest_4', 2, 2000, 'Deluxe', 'Vacant'),
('room_105', 'emp_5', 'guest_5', 2, 1800, 'Deluxe', 'Occupied'),
('room_106', 'emp_6', 'guest_6', 1, 1200, 'Standard', 'Vacant'),
('room_107', 'emp_7', 'guest_7', 4, 2500, 'Suite', 'Occupied'),
('room_108', 'emp_8', 'guest_8', 2, 2200, 'Deluxe', 'Occupied'),
('room_109', 'emp_9', 'guest_9', 1, 1400, 'Standard', 'Vacant'),
('room_110', 'emp_10', 'guest_10', 3, 2800, 'Suite', 'Occupied');



INSERT INTO reservation (name, guest_id, emp_id, check_in_date, check_out_date, cost, no_of_days_of_stay)
VALUES
('reservation_1', 'guest_1', 'emp_2', '2023-08-10', '2023-08-15', 10000, 5),
('reservation_2', 'guest_2', 'emp_3', '2023-09-05', '2023-09-08', 4500, 3),
('reservation_3', 'guest_3', 'emp_4', '2023-08-20', '2023-08-25', 15000, 5),
('reservation_4', 'guest_4', 'emp_1', '2023-09-01', '2023-09-03', 4000, 2),
('reservation_5', 'guest_5', 'emp_5', '2023-08-28', '2023-09-02', 9000, 5),
('reservation_6', 'guest_6', 'emp_7', '2023-09-10', '2023-09-15', 8000, 5),
('reservation_7', 'guest_7', 'emp_9', '2023-08-15', '2023-08-18', 4200, 3),
('reservation_8', 'guest_8', 'emp_10', '2023-09-20', '2023-09-25', 12000, 5),
('reservation_9', 'guest_9', 'emp_6', '2023-08-25', '2023-08-27', 3000, 2),
('reservation_10', 'guest_10', 'emp_8', '2023-09-28', '2023-10-02', 7000, 5);


INSERT INTO `conference and function` (conference_id, guest_id, emp_id, theme, type, organizers, cost, no_of_attendees)
VALUES
('conference_1', 'guest_3', 'emp_4', 'Tech Conference', 'Conference', 'Tech Events Co.', 8000, 150),
('conference_2', 'guest_8', 'emp_10', 'Business Seminar', 'Seminar', 'Business Insights', 5000, 80),
('conference_3', 'guest_7', 'emp_9', 'Cultural Festival', 'Festival', 'Cultural Society', 12000, 300),
('conference_4', 'guest_4', 'emp_1', 'Medical Symposium', 'Conference', 'MediConnect', 7000, 120),
('conference_5', 'guest_6', 'emp_7', 'Product Launch', 'Launch', 'Tech Innovations', 10000, 200),
('conference_6', 'guest_10', 'emp_8', 'Investor Meetup', 'Meeting', 'Investor Group', 6000, 50),
('conference_7', 'guest_5', 'emp_5', 'Music Concert', 'Concert', 'Music Society', 15000, 500),
('conference_8', 'guest_2', 'emp_3', 'Educational Workshop', 'Workshop', 'Education Foundation', 3000, 30),
('conference_9', 'guest_1', 'emp_2', 'Art Exhibition', 'Exhibition', 'Art Gallery', 4500, 100),
('conference_10', 'guest_9', 'emp_6', 'Science Symposium', 'Conference', 'Science Institute', 8000, 150);


INSERT INTO services (guest_id, emp_id, service_id, service_type, location, cost)
VALUES
('guest_1', 'emp_2', 'service_1', 'Room Service', 'Room 101', 500),
('guest_2', 'emp_3', 'service_2', 'Laundry', 'Laundry Room', 300),
('guest_3', 'emp_4', 'service_3', 'Catering', 'Conference Hall', 1500),
('guest_4', 'emp_1', 'service_4', 'Room Service', 'Room 104', 450),
('guest_5', 'emp_5', 'service_5', 'Spa', 'Spa Center', 800),
('guest_6', 'emp_7', 'service_6', 'Transportation', 'Front Desk', 700),
('guest_7', 'emp_9', 'service_7', 'Room Service', 'Room 207', 550),
('guest_8', 'emp_10', 'service_8', 'Conference Setup', 'Conference Hall', 1200),
('guest_9', 'emp_6', 'service_9', 'Room Decoration', 'Room 305', 400),
('guest_10', 'emp_8', 'service_10', 'Guided Tour', 'Lobby', 350);


INSERT INTO `services made` (guest_id, emp_id, no_of_services)
VALUES
('guest_1', 'emp_2', 3),
('guest_2', 'emp_3', 2),
('guest_3', 'emp_4', 4),
('guest_4', 'emp_1', 2),
('guest_5', 'emp_5', 2),
('guest_6', 'emp_7', 1),
('guest_7', 'emp_9', 3),
('guest_8', 'emp_10', 1),
('guest_9', 'emp_6', 2),
('guest_10', 'emp_8', 1);


INSERT INTO `food and bevarages` (guest_id, emp_id, type, cooking_method, flavour, quantity)
VALUES
('guest_1', 'emp_2', 'Indian', 'Grilled', 'Spicy', 2),
('guest_2', 'emp_3', 'Continental', 'Baked', 'Savory', 1),
('guest_3', 'emp_4', 'Chinese', 'Stir-fried', 'Sweet and Sour', 3),
('guest_4', 'emp_1', 'Indian', 'Curry', 'Mild', 2),
('guest_5', 'emp_5', 'Italian', 'Roasted', 'Garlic', 2),
('guest_6', 'emp_7', 'Indian', 'Fried', 'Spicy', 3),
('guest_7', 'emp_9', 'Continental', 'Grilled', 'Herbed', 1),
('guest_8', 'emp_10', 'Chinese', 'Steamed', 'Salty', 3),
('guest_9', 'emp_6', 'Indian', 'Baked', 'Savory', 2),
('guest_10', 'emp_8', 'Italian', 'Pan-fried', 'Buttery', 2);

