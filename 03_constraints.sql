ALTER TABLE Books ADD CHECK(total_copies>=0), ADD CHECK(available_copies>=0);
ALTER TABLE Borrowed_Books ADD CHECK(fine>=0);