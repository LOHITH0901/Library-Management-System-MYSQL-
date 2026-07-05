INSERT INTO Authors(name) VALUES
('J.K. Rowling'),('James Clear'),('Paulo Coelho'),('Robert Martin'),('Dennis Ritchie'),
('Eric Matthes'),('Yuval Noah Harari'),('George Orwell');
INSERT INTO Categories(name) VALUES
('Fantasy'),('Self Help'),('Novel'),('Programming'),('History'),('Science');
INSERT INTO Books(title,author_id,category_id,isbn,total_copies,available_copies) VALUES
('Harry Potter',1,1,'ISBN001',5,5),('Atomic Habits',2,2,'ISBN002',4,4),
('The Alchemist',3,3,'ISBN003',6,6),('Clean Code',4,4,'ISBN004',5,5),
('C Programming',5,4,'ISBN005',3,3),('Python Crash Course',6,4,'ISBN006',5,5),
('Sapiens',7,5,'ISBN007',4,4),('1984',8,3,'ISBN008',4,4),
('Book9',1,1,'ISBN009',2,2),('Book10',2,2,'ISBN010',2,2),
('Book11',3,3,'ISBN011',2,2),('Book12',4,4,'ISBN012',2,2),
('Book13',5,4,'ISBN013',2,2),('Book14',6,4,'ISBN014',2,2),
('Book15',7,5,'ISBN015',2,2),('Book16',8,3,'ISBN016',2,2),
('Book17',1,1,'ISBN017',2,2),('Book18',2,2,'ISBN018',2,2),
('Book19',3,3,'ISBN019',2,2),('Book20',4,4,'ISBN020',2,2);
INSERT INTO Members(full_name,email,phone,join_date) VALUES
('Member1','m1@mail.com','900000001','2026-01-01'),
('Member2','m2@mail.com','900000002','2026-01-02'),
('Member3','m3@mail.com','900000003','2026-01-03'),
('Member4','m4@mail.com','900000004','2026-01-04'),
('Member5','m5@mail.com','900000005','2026-01-05'),
('Member6','m6@mail.com','900000006','2026-01-06'),
('Member7','m7@mail.com','900000007','2026-01-07'),
('Member8','m8@mail.com','900000008','2026-01-08'),
('Member9','m9@mail.com','900000009','2026-01-09'),
('Member10','m10@mail.com','900000010','2026-01-10');
INSERT INTO Borrowed_Books(member_id,book_id,borrow_date,due_date,return_date)
VALUES
(1,1,'2026-06-01','2026-06-15',NULL),(2,2,'2026-06-02','2026-06-16','2026-06-10'),
(3,3,'2026-06-03','2026-06-17',NULL),(4,4,'2026-06-04','2026-06-18',NULL),
(5,5,'2026-06-05','2026-06-19',NULL),(6,6,'2026-06-06','2026-06-20',NULL),
(7,7,'2026-06-07','2026-06-21',NULL),(8,8,'2026-06-08','2026-06-22',NULL),
(9,9,'2026-06-09','2026-06-23',NULL),(10,10,'2026-06-10','2026-06-24',NULL);