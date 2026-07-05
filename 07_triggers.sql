DELIMITER //
CREATE TRIGGER trg_return BEFORE UPDATE ON Borrowed_Books FOR EACH ROW BEGIN IF NEW.return_date IS NOT NULL AND OLD.return_date IS NULL THEN UPDATE Books SET available_copies=available_copies+1 WHERE book_id=NEW.book_id; END IF; END//
DELIMITER ;