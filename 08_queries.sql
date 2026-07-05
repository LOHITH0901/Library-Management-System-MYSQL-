SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Current_Borrowed;
SELECT b.title,COUNT(*) borrows FROM Borrowed_Books bb JOIN Books b USING(book_id) GROUP BY b.title ORDER BY borrows DESC;
SELECT m.full_name,COUNT(*) FROM Members m LEFT JOIN Borrowed_Books bb USING(member_id) GROUP BY m.member_id;
SELECT * FROM Borrowed_Books WHERE due_date<CURDATE() AND return_date IS NULL;