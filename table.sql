
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(50),
    u_password VARCHAR(50),
    u_role VARCHAR(50)
);


INSERT INTO users (user_id, user_name, email, u_password, u_role) 
VALUES 
(1, 'bala123', 'email123', 'password123', 'student'),
(2, 'sandhiya123', 'email124', 'balasa', 'mentor'),
(3, 'viku123', 'email125', 'email123', 'student');


SELECT * FROM users;
CREATE TABLE students (
    stu_id INT PRIMARY KEY,
    s_user_id INT,
    s_name VARCHAR(50),
    s_address VARCHAR(100),
    s_phonenum VARCHAR(20),
    FOREIGN KEY (s_user_id) REFERENCES users(user_id)
);


INSERT INTO students (stu_id, s_user_id, s_name, s_address, s_phonenum)
VALUES (1, 1, 'bala', 'chennai', '12345');


SELECT * FROM students;

INSERT INTO users (user_id, user_name, email, u_password, u_role) 
VALUES 

(4, 'anil123', 'anil123@example.com', 'password126', 'mentor'),
(5, 'raju123', 'raju123@example.com', 'password127', 'student'),
(6, 'kumar123', 'kumar123@example.com', 'password128', 'mentor');
select * from users;
INSERT INTO students (stu_id, s_user_id, s_name, s_address, s_phonenum)
VALUES (2, 3, 'Viku', 'Bangalore', '67890'),
(3, 5, 'Raju', 'Hyderabad', '54321');
CREATE TABLE mentors (
    mentor_id INT PRIMARY KEY,
    m_user_id INT,
    m_name VARCHAR(50),
    m_department VARCHAR(50),
    m_phonenum VARCHAR(20),
    FOREIGN KEY (m_user_id) REFERENCES users(user_id)
);


INSERT INTO mentors (mentor_id, m_user_id, m_name, m_department, m_phonenum)
VALUES 
(1, 2, 'Sandhiya', 'Computer Science', '23456'),
(2, 4, 'Anil', 'Mathematics', '78901'),
(3, 6, 'Kumar', 'Physics', '89012');


SELECT * FROM mentors;
UPDATE mentors SET m_department = 'Full Stack Development' WHERE m_user_id = 2;
UPDATE mentors SET m_department = 'Backend Development' WHERE m_user_id = 4;
UPDATE mentors SET m_department = 'Frontend Development' WHERE m_user_id = 6;


drop table topics;

CREATE TABLE topics (
    topic_id INT PRIMARY KEY,
    topic_name VARCHAR(50),
    description VARCHAR(255),
    mentors_id INT,
    FOREIGN KEY (mentors_id) REFERENCES mentors(m_user_id)
);


INSERT INTO topics (topic_id, topic_name, description, mentors_id)
VALUES
(1, 'JavaScript Basics', 'Introduction to JavaScript programming', 2),
(2, 'Advanced Mathematics', 'In-depth study of mathematical theories', 4),
(3, 'Web Design', 'Principles of web design and user experience', 6);


SELECT * FROM topics;
drop table topics;
CREATE TABLE topics (
    topic_id INT PRIMARY KEY,
    topic_name VARCHAR(50),
    description VARCHAR(255),
    mentors_id INT,
    FOREIGN KEY (mentors_id) REFERENCES mentors(m_user_id)
);


INSERT INTO topics (topic_id, topic_name, description, mentors_id)
VALUES
(1, 'JavaScript Basics', 'Introduction to JavaScript programming', 2),
(2, 'Advanced Mathematics', 'In-depth study of mathematical theories', 4),
(3, 'Web Design', 'Principles of web design and user experience', 6);


SELECT * FROM topics;

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    topic_id INT,
    task_name VARCHAR(100),
    task_description VARCHAR(255),
    deadline DATE,
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);


DESCRIBE tasks;
INSERT INTO tasks (task_id, topic_id, task_name, task_description, deadline)
VALUES
(1, 1, 'Complete JavaScript Exercises', 'Complete exercises on variables and functions', '2024-07-15'),
(2, 2, 'post the task on github', 'post the js exersice to the github', '2024-07-20'),
(3, 3, 'Design Responsive Web Layouts', 'Design layouts using responsive web design principles', '2024-07-25');

SELECT * FROM tasks;

CREATE TABLE queries (
    query_id INT PRIMARY KEY,
    student_id INT,
    mentor_id INT,
    topic_id INT,
    question TEXT,
    answer TEXT,
    FOREIGN KEY (student_id) REFERENCES students(s_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(m_user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);


DESCRIBE queries;


INSERT INTO queries (query_id, student_id, mentor_id, topic_id, question, answer)
VALUES
(1, 1, 2, 1, 'What are the basics of JavaScript?', 'JavaScript is a versatile programming language used for web development. It is known for its ability to manipulate the DOM and handle asynchronous operations.'),
(2, 3, 4, 2, 'Can you explain the fundamental concepts of calculus?', 'Calculus involves the study of change and motion. Key concepts include limits, derivatives, and integrals.'),
(3, 5, 6, 3, 'How do I create a responsive web layout?', 'Responsive web design uses flexible grids and layouts, images, and media queries to create a seamless user experience across different devices.');


SELECT * FROM queries;
drop table queries;
CREATE TABLE queries (
    query_id INT PRIMARY KEY,
    student_id INT,
    mentor_id INT,
    topic_id INT,
    question TEXT,
    answer TEXT,
    FOREIGN KEY (student_id) REFERENCES students(s_user_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(m_user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);
INSERT INTO tasks (task_id, topic_id, task_name, task_description, deadline)
VALUES
(1, 1, 'Complete JavaScript Exercises', 'Complete exercises on variables and functions', '2024-07-15'),
(2, 2, 'post the task on github', 'post the js exersice to the github', '2024-07-20'),
(3, 3, 'Design Responsive Web Layouts', 'Design layouts using responsive web design principles', '2024-07-25');


CREATE TABLE queries (
    query_id INT PRIMARY KEY,
    student_id INT,
    mentor_id INT,
    topic_id INT,
    question TEXT,
    answer TEXT,
    FOREIGN KEY (student_id) REFERENCES students(stu_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(mentor_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);


DESCRIBE queries;

CREATE TABLE queries (
    query_id INT PRIMARY KEY,
    student_id INT,
    mentor_id INT,
    topic_id INT,
    question TEXT,
    answer TEXT,
    FOREIGN KEY (student_id) REFERENCES students(s_user_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(m_user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);


DESCRIBE queries;



INSERT INTO queries (query_id, student_id, mentor_id, topic_id, question, answer)
VALUES
(1, 1, 2, 1, 'What are the basics of JavaScript?', 'JavaScript is a versatile programming language used for web development. It is known for its ability to manipulate the DOM and handle asynchronous operations.'),
(2, 3, 4, 2, 'Can you explain the fundamental concepts of CSS?', 'CSS (Cascading Style Sheets) is a stylesheet language used for describing the presentation of a document written in HTML or XML.'),
(3, 5, 6, 3, 'How do I create a responsive web layout?', 'Responsive web design uses flexible grids and layouts, images, and media queries to create a seamless user experience across different devices.');


SELECT * FROM queries;
drop table queries;
CREATE TABLE queries (
    query_id INT PRIMARY KEY,
    student_id INT,
    mentor_id INT,
    topic_id INT,
    question TEXT,
    answer TEXT,
    FOREIGN KEY (student_id) REFERENCES students(s_user_id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(m_user_id),
    FOREIGN KEY (topic_id) REFERENCES topics(topic_id)
);


DESCRIBE queries;



INSERT INTO queries (query_id, student_id, mentor_id, topic_id, question, answer)
VALUES
(1, 1, 2, 1, 'What are the basics of JavaScript?', 'JavaScript is a versatile programming language used for web development. It is known for its ability to manipulate the DOM and handle asynchronous operations.'),
(2, 3, 4, 2, 'Can you explain the fundamental concepts of CSS?', 'CSS (Cascading Style Sheets) is a stylesheet language used for describing the presentation of a document written in HTML or XML.'),
(3, 5, 6, 3, 'How do I create a responsive web layout?', 'Responsive web design uses flexible grids and layouts, images, and media queries to create a seamless user experience across different devices.');


SELECT * FROM queries;
 drop table user;

