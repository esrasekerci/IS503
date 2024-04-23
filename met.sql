CREATE DATABASE  IF NOT EXISTS `met`;
USE `met`;

show tables;

drop table IF EXISTS registration;
drop table IF EXISTS hashtags;
drop table IF EXISTS interests;
drop table IF EXISTS student_clubs;
drop table IF EXISTS speaks_at;
drop table IF EXISTS speaker;
drop table IF EXISTS review;
drop table IF EXISTS session;
drop table IF EXISTS `user`;
drop table IF EXISTS `session`;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `account_type` enum('public','private') NOT NULL,
  `bio` varchar(255) NOT NULL,
  `status` enum('student','academics') NOT NULL,
  `affiliation` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email_address`, `user_password`, `phone_number`, `account_type`, `bio`, `status`, `affiliation`) 
VALUES
(1, 'John', 'Smith', 'john@example.com', 'password123', '1234567890', 'public', 'Hello, I am John Smith.', 'student', 'Computer Science'),
(2, 'Emma', 'Johnson', 'emma@example.com', 'password456', '0987654321', 'private', 'Hi, I am Emma Johnson.', 'academics', 'Physics'),
(3, 'Michael', 'Brown', 'michael@example.com', 'password789', '9876543210', 'public', 'Nice to meet you!', 'student', 'Mathematics'),
(4, 'Jennifer', 'Davis', 'jennifer@example.com', 'passwordabc', '2345678901', 'private', 'I love programming.', 'academics', 'Computer Science'),
(5, 'William', 'Miller', 'william@example.com', 'passworddef', '3456789012', 'public', 'Exploring the world.', 'student', 'Biology'),
(6, 'Emily', 'Wilson', 'emily@example.com', 'passwordghi', '4567890123', 'private', 'Music is life.', 'academics', 'Mathematics'),
(7, 'Daniel', 'Moore', 'daniel@example.com', 'passwordjkl', '5678901234', 'public', 'Living the dream.', 'student', 'Computer Science'),
(8, 'Ava', 'Taylor', 'ava@example.com', 'passwordmno', '6789012345', 'private', 'Coding enthusiast.', 'academics', 'Physics'),
(9, 'Olivia', 'Anderson', 'olivia@example.com', 'passwordpqr', '7890123456', 'public', 'Books lover.', 'student', 'Mathematics'),
(10, 'James', 'Jackson', 'james@example.com', 'passwordstu', '8901234567', 'private', 'Football fan.', 'academics', 'Computer Science'),
(11, 'Sophia', 'White', 'sophia@example.com', 'passwordvwx', '9012345678', 'public', 'Coffee addict.', 'student', 'Biology'),
(12, 'Alexander', 'Harris', 'alexander@example.com', 'passwordyz', '0123456789', 'private', 'Movie buff.', 'academics', 'Mathematics'),
(13, 'Emma', 'Clark', 'emma_clark@example.com', 'password123', '5451234567', 'public', 'Nature lover.', 'student', 'Physics'),
(14, 'Ryan', 'Young', 'ryan@example.com', 'password456', '5452345678', 'private', 'Adventure seeker.', 'academics', 'Computer Science'),
(15, 'Charlotte', 'Lewis', 'charlotte@example.com', 'password789', '5453456789', 'public', 'Tech enthusiast.', 'student', 'Mathematics'),
(16, 'David', 'Walker', 'david@example.com', 'passwordabc', '5454567890', 'private', 'Gamer for life.', 'academics', 'Physics'),
(17, 'Isabella', 'Hall', 'isabella@example.com', 'passworddef', '5455678901', 'public', 'Dreamer.', 'student', 'Biology'),
(18, 'Mason', 'Allen', 'mason@example.com', 'passwordghi', '4556789012', 'private', 'Art lover.', 'academics', 'Computer Science'),
(19, 'Madison', 'King', 'madison@example.com', 'passwordjkl', '5447890123', 'public', 'Foodie.', 'student', 'Physics'),
(20, 'Aiden', 'Wright', 'aiden@example.com', 'passwordmno', '5458901234', 'private', 'Fitness freak.', 'academics', 'Mathematics'),
(21, 'Grace', 'Martin', 'grace@example.com', 'passwordpqr', '5549012345', 'public', 'Wanderlust.', 'student', 'English'),
(22, 'Daniel', 'Thompson', 'daniel@example.com', 'passwordstu', '5550123456', 'private', 'Dream chaser.', 'academics', 'History'),
(23, 'Hannah', 'Garcia', 'hannah@example.com', 'passwordvwx', '5551234567', 'public', 'Fashionista.', 'student', 'Sociology'),
(24, 'Ethan', 'Young', 'ethan@example.com', 'passwordyz', '5552345678', 'private', 'Animal lover.', 'academics', 'Psychology'),
(25, 'Sophia', 'Hernandez', 'sophia@example.com', 'password123', '5553456789', 'public', 'Coffee lover.', 'student', 'English'),
(26, 'Caleb', 'Lee', 'caleb@example.com', 'password456', '5554567890', 'private', 'Music aficionado.', 'academics', 'History'),
(27, 'Ava', 'Gonzalez', 'ava@example.com', 'password789', '5555678901', 'public', 'Fitness enthusiast.', 'student', 'Sociology'),
(28, 'Jack', 'Rodriguez', 'jack@example.com', 'passwordabc', '5556789012', 'private', 'Traveler.', 'academics', 'Psychology'),
(29, 'Madeline', 'Martinez', 'madeline@example.com', 'passworddef', '5557890123', 'public', 'Dreamer.', 'student', 'English'),
(30, 'Henry', 'Lopez', 'henry@example.com', 'passwordghi', '5558901234', 'private', 'Art admirer.', 'academics', 'History'),
(31, 'Leah', 'Perez', 'leah@example.com', 'passwordjkl', '5559012345', 'public', 'Bookworm.', 'student', 'Sociology'),
(32, 'Jackson', 'Sanchez', 'jackson@example.com', 'passwordmno', '4550123456', 'private', 'Dog lover.', 'academics', 'Psychology'),
(33, 'Olivia', 'Rivera', 'olivia@example.com', 'passwordpqr', '4551234567', 'public', 'Movie aficionado.', 'student', 'English'),
(34, 'Lucas', 'Torres', 'lucas@example.com', 'passwordstu', '5554345678', 'private', 'Photography enthusiast.', 'academics', 'History'),
(35, 'Ella', 'Ramirez', 'ella@example.com', 'passwordvwx', '5553446789', 'public', 'Music lover.', 'student', 'Sociology'),
(36, 'David', 'Ward', 'david@example.com', 'passwordyz', '4454567890', 'private', 'Fitness enthusiast.', 'academics', 'Psychology'),
(37, 'Lily', 'Flores', 'lily@example.com', 'password123', '4445678901', 'public', 'Adventure seeker.', 'student', 'English'),
(38, 'Leo', 'Gomez', 'leo@example.com', 'password456', '4446789012', 'private', 'Nature enthusiast.', 'academics', 'History'),
(39, 'Aria', 'Diaz', 'aria@example.com', 'password789', '5347890123', 'public', 'Tech enthusiast.', 'student', 'Sociology'),
(40, 'Max', 'Martin', 'max@example.com', 'passwordabc', '5448901234', 'private', 'Fitness freak.', 'academics', 'Psychology'),
(41, 'Grace', 'Hill', 'grace_hill@example.com', 'passworddef', '5449012345', 'public', 'Wanderlust.', 'student', 'English'),
(42, 'Owen', 'Carter', 'owen@example.com', 'passwordghi', '4440123456', 'private', 'Dream chaser.', 'academics', 'History'),
(43, 'Amelia', 'Perez', 'amelia@example.com', 'passwordjkl', '4441234567', 'public', 'Fashionista.', 'student', 'Sociology'),
(44, 'Aiden', 'Flores', 'aiden@example.com', 'passwordmno', '5562345678', 'private', 'Animal lover.', 'academics', 'Psychology'),
(45, 'Luna', 'Reed', 'luna@example.com', 'passwordpqr', '6663456789', 'public', 'Coffee lover.', 'student', 'English'),
(46, 'Mateo', 'Cooper', 'mateo@example.com', 'passwordstu', '5566567890', 'private', 'Music aficionado.', 'academics', 'History'),
(47, 'Avery', 'Gonzalez', 'avery@example.com', 'passwordvwx', '5456678901', 'public', 'Fitness enthusiast.', 'student', 'Sociology'),
(48, 'Eva', 'Rodriguez', 'eva@example.com', 'passwordyz', '5448449012', 'private', 'Traveler.', 'academics', 'Psychology'),
(49, 'Zoe', 'Sanchez', 'zoe@example.com', 'password123', '5557844123', 'public', 'Dreamer.', 'student', 'English'),
(50, 'Hudson', 'Lopez', 'hudson@example.com', 'password456', '5554401234', 'private', 'Art admirer.', 'academics', 'History');

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `session_id` int NOT NULL,
  `capacity` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `visual` varchar(255) NOT NULL,
  `datetime` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `session_status` enum('past','present','upcoming') NOT NULL,
  `session_type` enum('workshop','presentation','seminar') NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `session` (`session_id`, `capacity`, `title`, `description`, `visual`, `datetime`, `location`, `session_status`, `session_type`)
VALUES
(1, 50, 'Introduction to Python Programming', 'Learn the basics of Python programming language.', 'python_image.jpg', '2024-04-01', 'Room A101', 'past', 'workshop'),
(2, 30, 'Data Visualization Techniques', 'Explore various data visualization tools and techniques.', 'data_visualization_image.jpg', '2024-04-15', 'Room B205', 'present', 'workshop'),
(3, 40, 'Machine Learning Fundamentals', 'Introduction to the core concepts of machine learning.', 'machine_learning_image.jpg', '2024-05-05', 'Auditorium', 'upcoming', 'presentation'),
(4, 25, 'Digital Marketing Strategies', 'Discover effective digital marketing strategies for businesses.', 'digital_marketing_image.jpg', '2024-05-20', 'Conference Room', 'upcoming', 'seminar'),
(5, 60, 'Web Development Bootcamp', 'A comprehensive bootcamp covering modern web development technologies.', 'web_development_image.jpg', '2024-06-10', 'Room C301', 'upcoming', 'workshop'),
(6, 35, 'Artificial Intelligence Applications', 'Explore real-world applications of artificial intelligence.', 'ai_applications_image.jpg', '2024-06-25', 'Hall A', 'upcoming', 'presentation'),
(7, 45, 'Entrepreneurship Panel Discussion', 'Panel discussion featuring successful entrepreneurs sharing their experiences.', 'entrepreneurship_image.jpg', '2024-07-05', 'Auditorium', 'upcoming', 'seminar'),
(8, 50, 'Cybersecurity Workshop', 'Hands-on workshop focusing on cybersecurity fundamentals.', 'cybersecurity_image.jpg', '2024-07-20', 'Room B101', 'upcoming', 'workshop'),
(9, 30, 'Public Speaking Mastery', 'Master the art of public speaking with practical tips and techniques.', 'public_speaking_image.jpg', '2024-08-01', 'Room A205', 'upcoming', 'seminar'),
(10, 40, 'Frontend Development Seminar', 'Explore the latest trends and tools in frontend development.', 'frontend_development_image.jpg', '2024-08-15', 'Conference Room', 'upcoming', 'presentation'),
(11, 55, 'Introduction to Data Science', 'An introductory session covering the basics of data science.', 'data_science_image.jpg', '2024-09-05', 'Room C401', 'upcoming', 'workshop'),
(12, 20, 'Leadership Workshop', 'Enhance your leadership skills with interactive exercises and discussions.', 'leadership_image.jpg', '2024-09-20', 'Hall B', 'upcoming', 'workshop'),
(13, 35, 'E-commerce Strategies', 'Learn effective strategies for launching and growing an e-commerce business.', 'ecommerce_image.jpg', '2024-10-10', 'Room A301', 'upcoming', 'seminar'),
(14, 25, 'Mobile App Development Trends', 'Explore emerging trends and technologies in mobile app development.', 'mobile_app_trends_image.jpg', '2024-10-25', 'Auditorium', 'upcoming', 'presentation'),
(15, 45, 'Financial Planning Seminar', 'Get insights into personal and business financial planning.', 'financial_planning_image.jpg', '2024-11-05', 'Room B301', 'upcoming', 'seminar'),
(16, 50, 'Cloud Computing Workshop', 'Hands-on workshop covering the basics of cloud computing platforms.', 'cloud_computing_image.jpg', '2024-11-20', 'Room A101', 'upcoming', 'workshop'),
(17, 30, 'Artificial Intelligence Ethics', 'Discussion on the ethical implications of AI technologies.', 'ai_ethics_image.jpg', '2024-12-10', 'Room C201', 'upcoming', 'seminar'),
(18, 40, 'UI/UX Design Principles', 'Learn about user interface and user experience design principles.', 'ui_ux_design_image.jpg', '2025-01-05', 'Conference Room', 'upcoming', 'presentation'),
(19, 55, 'Data Analytics Workshop', 'Hands-on workshop focusing on practical data analytics techniques.', 'data_analytics_image.jpg', '2025-01-20', 'Hall A', 'upcoming', 'workshop'),
(20, 35, 'Marketing Analytics Seminar', 'Explore the use of analytics in optimizing marketing strategies.', 'marketing_analytics_image.jpg', '2025-02-05', 'Room B401', 'upcoming', 'seminar');

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `reg_id` int NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `approval_status` enum('approved','rejected') NOT NULL,
  `anonymity` enum('anonymous','not anonymous') NOT NULL,
  `survey_status` enum('done','in progress') NOT NULL,
  `user_id` int NOT NULL,
  `session_id` int NOT NULL,
  PRIMARY KEY (`reg_id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`session_id`) REFERENCES `session`(`session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `registration` (`reg_id`, `requirements`, `reg_date`, `approval_status`, `anonymity`, `survey_status`, `user_id`, `session_id`)
VALUES
(1, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done',1,20),
(2, 'for bookworms only', '2024-03-18', 'approved', 'not anonymous', 'done',2,12),
(3, 'students with programming skills', '2024-03-18', 'rejected', 'anonymous', 'in progress',1,13),
(4, 'for students keen on history', '2024-03-19', 'approved', 'not anonymous', 'done',4,16),
(5, 'technical departments only', '2024-03-20', 'rejected', 'not anonymous', 'in progress',4,19),
(6, 'for bookworms only', '2024-03-21', 'approved', 'anonymous', 'done',6,17),
(7, 'students with programming skills', '2024-03-22', 'rejected', 'anonymous', 'in progress',8,4),
(8, 'for students keen on history', '2024-03-23', 'approved', 'not anonymous', 'done',8,6),
(9, 'technical departments only', '2024-03-24', 'rejected', 'not anonymous', 'in progress',10,10),
(10, 'for bookworms only', '2024-03-25', 'approved', 'not anonymous', 'done',12,7),
(11, 'students with programming skills', '2024-03-26', 'approved', 'anonymous', 'in progress',13,9),
(12, 'for students keen on history', '2024-03-27', 'approved', 'not anonymous', 'done',13,10),
(13, 'technical departments only', '2024-03-28', 'approved', 'not anonymous', 'in progress',17,16),
(14, 'for bookworms only', '2024-03-29', 'rejected', 'anonymous', 'done',18,2),
(15, 'students with programming skills', '2024-03-30', 'approved', 'not anonymous', 'in progress',18,4),
(16, 'for students keen on history', '2024-03-31', 'approved', 'anonymous', 'done',20,5),
(17, 'technical departments only', '2024-04-01', 'approved', 'not anonymous', 'in progress',20,8),
(18, 'for bookworms only', '2024-04-02', 'rejected', 'anonymous', 'done',24,17),
(19, 'students with programming skills', '2024-04-03', 'rejected', 'not anonymous', 'in progress',24,9),
(20, 'for students keen on history', '2024-04-04', 'approved', 'not anonymous', 'done',24,18),
(21, 'technical departments only', '2024-04-05', 'approved', 'anonymous', 'in progress',25,16),
(22, 'for bookworms only', '2024-04-06', 'approved', 'not anonymous', 'done',26,5),
(23, 'students with programming skills', '2024-04-07', 'rejected', 'anonymous', 'in progress',26,3),
(24, 'for students keen on history', '2024-04-08', 'approved', 'not anonymous', 'done',26,18),
(25, 'technical departments only', '2024-04-09', 'rejected', 'anonymous', 'in progress',27,4),
(26, 'for bookworms only', '2024-04-10', 'approved', 'not anonymous', 'done',29,6),
(27, 'students with programming skills', '2024-04-11', 'approved', 'anonymous', 'in progress',30,8),
(28, 'for students keen on history', '2024-04-12', 'approved', 'not anonymous', 'done',30,6),
(29, 'technical departments only', '2024-04-13', 'approved', 'anonymous', 'in progress',30,16),
(30, 'for bookworms only', '2024-04-14', 'approved', 'not anonymous', 'done',31,19),
(31, 'students with programming skills', '2024-04-15', 'rejected', 'anonymous', 'in progress',34,2),
(32, 'for students keen on history', '2024-04-16', 'approved', 'not anonymous', 'done',34,6),
(33, 'technical departments only', '2024-04-17', 'approved', 'anonymous', 'in progress',10,19),
(34, 'for bookworms only', '2024-04-18', 'rejected', 'not anonymous', 'done',11,3),
(35, 'students with programming skills', '2024-04-19', 'approved', 'anonymous', 'in progress',12,18),
(36, 'for students keen on history', '2024-04-20', 'approved', 'not anonymous', 'done',15,4),
(37, 'technical departments only', '2024-04-21', 'rejected', 'anonymous', 'in progress',36,2),
(38, 'for bookworms only', '2024-04-22', 'approved', 'not anonymous', 'done',36,8),
(39, 'students with programming skills', '2024-04-23', 'approved', 'anonymous', 'in progress',36,5),
(40, 'for students keen on history', '2024-04-24', 'approved', 'not anonymous', 'done',38,4),
(41, 'technical departments only', '2024-04-25', 'approved', 'anonymous', 'in progress',40,9),
(42, 'for bookworms only', '2024-04-26', 'rejected', 'anonymous', 'done',41,9),
(43, 'students with programming skills', '2024-04-27', 'approved', 'not anonymous', 'in progress',41,7),
(44, 'for students keen on history', '2024-04-28', 'approved', 'anonymous', 'done',42,5),
(45, 'technical departments only', '2024-04-29', 'rejected', 'anonymous', 'in progress',44,8),
(46, 'for bookworms only', '2024-04-30', 'approved', 'not anonymous', 'done',44,12),
(47, 'students with programming skills', '2024-05-01', 'rejected', 'anonymous', 'in progress',45,5),
(48, 'for students keen on history', '2024-05-02', 'approved', 'not anonymous', 'done',45,9),
(49, 'technical departments only', '2024-05-03', 'approved', 'anonymous', 'in progress',45,18),
(50, 'for bookworms only', '2024-05-04', 'rejected', 'anonymous', 'done',45,16),
(51, 'students with programming skills', '2024-05-05', 'approved', 'not anonymous', 'in progress',46,18),
(52, 'for students keen on history', '2024-05-06', 'approved', 'anonymous', 'done',17,15),
(53, 'technical departments only', '2024-05-07', 'approved', 'not anonymous', 'in progress',16,8),
(54, 'for bookworms only', '2024-05-08', 'approved', 'anonymous', 'done',14,5),
(55, 'students with programming skills', '2024-05-09', 'rejected', 'not anonymous', 'in progress',16,3),
(56, 'for students keen on history', '2024-05-10', 'approved', 'anonymous', 'done',19,3),
(57, 'technical departments only', '2024-05-11', 'approved', 'not anonymous', 'in progress',14,2),
(58, 'for bookworms only', '2024-05-12', 'rejected', 'anonymous', 'done',12,2),
(59, 'students with programming skills', '2024-05-13', 'approved', 'not anonymous', 'in progress',17,3),
(60, 'for students keen on history', '2024-05-14', 'approved', 'anonymous', 'done',19,4),
(61, 'technical departments only', '2024-05-15', 'rejected', 'anonymous', 'in progress',13,4),
(62, 'for bookworms only', '2024-05-16', 'approved', 'not anonymous', 'done',16,7),
(63, 'students with programming skills', '2024-05-17', 'approved', 'anonymous', 'in progress',15,19),
(64, 'for students keen on history', '2024-05-18', 'approved', 'not anonymous', 'done',11,18),
(65, 'technical departments only', '2024-05-19', 'rejected', 'anonymous', 'in progress',13,17),
(66, 'for bookworms only', '2024-05-20', 'approved', 'not anonymous', 'done',12,11),
(67, 'students with programming skills', '2024-05-21', 'approved', 'anonymous', 'in progress',7,15),
(68, 'for students keen on history', '2024-05-22', 'approved', 'not anonymous', 'done',7,18),
(69, 'technical departments only', '2024-05-23', 'approved', 'anonymous', 'in progress',16,9),
(70, 'for bookworms only', '2024-05-24', 'rejected', 'anonymous', 'done',13,3),
(71, 'students with programming skills', '2024-05-25', 'approved', 'not anonymous', 'in progress',14,13),
(72, 'for students keen on history', '2024-05-26', 'approved', 'anonymous', 'done',19,11),
(73, 'technical departments only', '2024-05-27', 'rejected', 'anonymous', 'in progress',3,18),
(74, 'for bookworms only', '2024-05-28', 'approved', 'not anonymous', 'done',4,19),
(75, 'students with programming skills', '2024-05-29', 'rejected', 'anonymous', 'in progress',12,18);




--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `session_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `review_fk1` (`user_id`),
  KEY `review_fk2` (`session_id`),
  CONSTRAINT `review_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_fk2` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `review` (`review_id`, `rating`, `comment`, `user_id`, `session_id`)
VALUES
(1, 4, 'Great session, learned a lot!', 1, 3),
(2, 5, 'Amazing workshop, highly recommended.', 2, 5),
(3, 3, 'Good content but could be more engaging.', 3, 2),
(4, 4, 'Enjoyed the seminar, informative.', 4, 7),
(5, 5, 'Best presentation I have attended so far.', 5, 4),
(6, 2, 'Disappointed with the workshop content.', 6, 1),
(7, 4, 'Very knowledgeable speaker, learned new things.', 7, 6),
(8, 3, 'Average session, expected more.', 8, 9),
(9, 5, 'Incredible insights, loved it!', 9, 8),
(10, 4, 'Well organized seminar, thank you!', 10, 12),
(11, 3, 'Good workshop, but lacked depth.', 11, 11),
(12, 5, 'Excellent presentation, exceeded expectations.', 12, 14),
(13, 4, 'Informative session, would attend again.', 13, 15),
(14, 3, 'Decent workshop, could improve delivery.', 14, 16),
(15, 5, 'Fantastic seminar, learned a lot.', 15, 17),
(16, 4, 'Great insights shared, worth attending.', 16, 18),
(17, 3, 'Session was okay, nothing extraordinary.', 17, 19),
(18, 5, 'Brilliant presentation, very engaging.', 18, 20),
(19, 4, 'Enjoyed the workshop, practical content.', 19, 13),
(20, 3, 'Decent seminar, could have been more interactive.', 20, 18),
(21, 5, 'Outstanding session, exceeded expectations.', 21, 10),
(22, 4, 'Well-structured workshop, learned a lot.', 22, 10),
(23, 3, 'Good presentation, but lacked real-world examples.', 23, 20),
(24, 5, 'Amazing seminar, highly recommended.', 24, 20),
(25, 4, 'Excellent workshop, very informative.', 25, 12),
(26, 5, 'Outstanding workshop, excellent content!', 1, 5), 
(27, 3, 'Decent presentation, could be more engaging.', 2, 7), 
(28, 4, 'Well-structured workshop, practical exercises.', 3, 9), 
(29, 2, 'Disappointed with the content, lacked depth.', 4, 11), 
(30, 5, 'Fantastic seminar, highly engaging speaker!', 5, 13), 
(31, 4, 'Great workshop, excellent material covered.', 1, 2), 
(32, 3, 'Average presentation, could improve.', 2, 4),
(33, 5, 'Outstanding seminar, very informative!', 3, 6), 
(34, 4, 'Enjoyed the workshop, practical exercises.', 4, 8), 
(35, 2, 'Disappointed with the seminar, lacked engagement.', 5, 10);


--
-- Table structure for table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;

CREATE TABLE `hashtags` (
  `session_id` int NOT NULL,
  `hashtag` varchar(255) NOT NULL,
  PRIMARY KEY (`hashtag`,`session_id`),
  KEY `hash_fk1` (`session_id`),
  CONSTRAINT `hash_fk1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `hashtags` (`session_id`, `hashtag`)
VALUES
(1, '#programming'),
(2, '#dataanalysis'),
(3, '#machinelearning'),
(4, '#webdevelopment'),
(5, '#datavisualization'),
(6, '#artificialintelligence'),
(7, '#digitalmarketing'),
(8, '#entrepreneurship'),
(9, '#cybersecurity'),
(10, '#publicspeaking'),
(11, '#frontenddevelopment'),
(12, '#leadership'),
(13, '#ecommerce'),
(14, '#mobileapps'),
(15, '#financialplanning');


--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `user_id` int NOT NULL,
  `interest` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`interest`),
  KEY `int_fk1` (`user_id`),
  CONSTRAINT `int_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `interests` (`user_id`, `interest`)
VALUES
(1, 'computers'),
(1, 'programming'),
(2, 'books'),
(2, 'history'),
(3, 'blockchain'),
(3, 'cybersecurity'),
(4, 'programming'),
(4, 'data science'),
(5, 'history'),
(5, 'artificial intelligence'),
(6, 'finance'),
(6, 'entrepreneurship'),
(7, 'digital marketing'),
(7, 'social media'),
(8, 'biology'),
(8, 'medicine'),
(9, 'music'),
(9, 'art'),
(10, 'traveling'),
(10, 'photography'),
(11, 'programming'),
(12, 'computers'),
(12, 'cybersecurity'),
(13, 'books'),
(14, 'history'),
(14, 'art'),
(15, 'programming'),
(15, 'data science'),
(16, 'digital marketing'),
(17, 'blockchain'),
(17, 'finance');


--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;

CREATE TABLE `speaker` (
  `speaker_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`speaker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `speaker` (`speaker_id`, `first_name`, `last_name`)
VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Michael', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'David', 'Martinez'),
(6, 'Sarah', 'Anderson'),
(7, 'Robert', 'Wilson'),
(8, 'Jennifer', 'Taylor'),
(9, 'William', 'Thomas'),
(10, 'Jessica', 'Lee'),
(11, 'Matthew', 'Harris'),
(12, 'Amanda', 'Clark'),
(13, 'James', 'Lewis'),
(14, 'Linda', 'Walker'),
(15, 'Christopher', 'Hall'),
(16, 'Mary', 'Allen'),
(17, 'Daniel', 'Young'),
(18, 'Patricia', 'King'),
(19, 'Joseph', 'Wright'),
(20, 'Karen', 'Scott');


--
-- Table structure for table `speaks_at`
--

DROP TABLE IF EXISTS `speaks_at`;

CREATE TABLE `speaks_at` (
  `s_id` int NOT NULL,
  `session_id` int NOT NULL,
  PRIMARY KEY (`s_id`,`session_id`),
  KEY `speaker_fk1` (`s_id`),
  KEY `speaker_fk2` (`session_id`),
  CONSTRAINT `speaker_fk1` FOREIGN KEY (`s_id`) REFERENCES `speaker` (`speaker_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `speaker_fk2` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `speaks_at` (`s_id`, `session_id`)
VALUES
(1, 1),
(4, 8),
(7, 3),
(2, 6),
(5, 15),
(8, 10),
(11, 12),
(14, 5),
(17, 14),
(20, 20),
(3, 18),
(6, 9),
(9, 17),
(12, 2),
(15, 11),
(18, 13),
(10, 16),
(13, 19),
(16, 4),
(19, 7),
(1, 10), 
(2, 12),  
(3, 14), 
(4, 15), 
(5, 18);  

--
-- Table structure for table `student_clubs`
--

DROP TABLE IF EXISTS `student_clubs`;

CREATE TABLE `student_clubs` (
  `user_id` int NOT NULL,
  `club` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`club`),
  KEY `sclub_fk1` (`user_id`),
  CONSTRAINT `sclub_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `student_clubs` (`user_id`, `club`)
VALUES
(3, 'Chess Club'),
(3, 'Drama Club'),
(4, 'Art Club'),
(5, 'Debate Club'),
(5, 'Music Club'),
(6, 'Music Club'),
(7, 'Science Club'),
(7, 'Debate Club'),
(8, 'Drama Club'),
(8, 'Music Club'),
(9, 'Photography Club'),
(10, 'Environmental Club'),
(10, 'Drama Club'),
(11, 'Math Club'),
(12, 'Film Club'),
(12, 'Writing Club'),
(13, 'Writing Club'),
(14, 'Robotics Club'),
(15, 'Cooking Club'),
(16, 'Fitness Club'),
(17, 'Fashion Club'),
(18, 'Gaming Club'),
(19, 'Astronomy Club'),
(19, 'Science Club'),
(20, 'Language Club'),
(20, 'Debate Club'),
(21, 'Business Club'),
(22, 'Volunteering Club'),
(22, 'Environmental Club'),
(23, 'Chess Club');

SELECT 
    s.title,
    s.datetime,
    s.location,
    COUNT(r.reg_id) reg_id_count
FROM 
    SESSION s
JOIN 
    REGISTRATION r ON s.session_id = r.session_id
GROUP BY 
    s.session_id
ORDER BY 
    reg_id_count DESC
LIMIT 5;


CREATE OR REPLACE VIEW ActiveUsersWithMultipleRegistrations AS
SELECT 
    u.user_id,
    u.phone_number,
    u.email_address,
    u.account_type
FROM 
    USER u
JOIN 
    REGISTRATION r ON u.user_id = r.user_id
WHERE 
    r.reg_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH)
GROUP BY 
    u.user_id
HAVING 
    COUNT(r.user_id) > 3;
SELECT * FROM met.activeuserswithmultipleregistrations;


DROP TRIGGER IF EXISTS PreventSessionOverCapacity;

-- Set the delimiter to handle stored procedure creation
DELIMITER //

CREATE TRIGGER PreventSessionOverCapacity
BEFORE INSERT ON REGISTRATION
FOR EACH ROW
BEGIN
    DECLARE session_capacity INT;
    DECLARE registered_users_count INT;
    
    -- Get the capacity of the session
    SELECT capacity INTO session_capacity
    FROM SESSION
    WHERE session_id = NEW.session_id;
    
    -- Get the count of registered users for the session
    SELECT COUNT(*) INTO registered_users_count
    FROM REGISTRATION
    WHERE session_id = NEW.session_id;
    
    -- Check if the session has reached its maximum capacity
    IF registered_users_count >= session_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Session has reached maximum capacity. Registration is not allowed.';
    END IF;
END //

-- Reset the delimiter to semicolon
DELIMITER ;

-- Attempt to register a user for a session
INSERT INTO registration (reg_id, requirements, reg_date, approval_status, anonymity, survey_status, user_id, session_id)
VALUES
(77, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 1, 12),
(78, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 2, 12),
(79, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 3, 12),
(80, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 4, 12),
(81, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 5, 12),
(82, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 6, 12),
(83, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 7, 12),
(84, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 8, 12),
(85, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 9, 12),
(86, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 10, 12),
(87, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 11, 12),
(88, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 12, 12),
(89, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 13, 12),
(90, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 14, 12),
(91, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 15, 12),
(92, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 16, 12),
(93, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 17, 12),
(94, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 18, 12),
(95, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 19, 12),
(96, 'technical departments only', '2024-03-17', 'approved', 'not anonymous', 'done', 20, 12);


SELECT * FROM registration;
DELETE FROM registration
WHERE reg_id BETWEEN 77 AND 96;
SELECT COUNT(*) AS row_count FROM registration;


SELECT 
    s.title AS session_title,
    COUNT(r.reg_id) AS registrations_count
FROM 
    SESSION s
JOIN 
    REGISTRATION r ON s.session_id = r.session_id
WHERE 
    r.approval_status = 'approved'
GROUP BY 
    s.session_id
HAVING 
    registrations_count < 3;


SELECT
    s.s_id,
    sp.first_name,
    sp.last_name,
    AVG(r.rating) AS average_rating
FROM
    speaker sp
JOIN
    speaks_at s ON sp.speaker_id = s.s_id
JOIN
    Session se ON s.session_id = se.session_id
LEFT JOIN
    Review r ON se.session_id = r.session_id
GROUP BY
    s.s_id, sp.first_name, sp.last_name
ORDER BY
    average_rating DESC
LIMIT 5;



SELECT DISTINCT
    u.user_id,
    u.first_name,
    u.last_name
FROM
    User u
JOIN
    Interests i ON u.user_id = i.user_id
JOIN
    Registration r ON u.user_id = r.user_id
WHERE
    (i.interest = 'programming' OR i.interest = 'computer')
    AND (r.Requirements LIKE '%programming%' OR r.Requirements LIKE '%computer%' OR r.Requirements LIKE '%technic%');




