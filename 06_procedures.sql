DELIMITER //
CREATE PROCEDURE BorrowBook(IN m INT,IN b INT)
BEGIN INSERT INTO Borrowed_Books(member_id,book_id,borrow_date,due_date) VALUES(m,b,CURDATE(),DATE_ADD(CURDATE(),INTERVAL 15 DAY)); UPDATE Books SET available_copies=available_copies-1 WHERE book_id=b; END//
DELIMITER ;