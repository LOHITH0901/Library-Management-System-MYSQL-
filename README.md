# 📚 Library Management System (MySQL)

A simple Library Management System built using **MySQL** to manage books, members, and borrowing records. This project demonstrates database design, relationships, SQL queries, views, stored procedures, and triggers.

---

## 📌 Project Overview

The Library Management System helps a librarian to:

- Add and manage books
- Maintain member records
- Borrow books
- Return books
- Track currently borrowed books
- Manage book availability automatically

This project is created for practicing SQL concepts and database management using MySQL Workbench.

---

# 🛠 Technologies Used

- MySQL 8.x / MariaDB
- MySQL Workbench
- SQL

---

# 📂 Project Structure

```
Library-Management-System/
│
├── README.md
│
└── database/
    ├── 01_create_database.sql
    ├── 02_create_tables.sql
    ├── 03_constraints.sql
    ├── 04_insert_data.sql
    ├── 05_views.sql
    ├── 06_procedures.sql
    ├── 07_triggers.sql
    └── 08_queries.sql
```

---

# 🗄 Database Schema

The project contains the following tables:

## 1. Authors

Stores author details.

| Column | Description |
|---------|-------------|
| author_id | Primary Key |
| name | Author Name |

---

## 2. Categories

Stores book categories.

| Column | Description |
|---------|-------------|
| category_id | Primary Key |
| name | Category Name |

---

## 3. Books

Stores all library books.

| Column | Description |
|---------|-------------|
| book_id | Primary Key |
| title | Book Title |
| author_id | Foreign Key |
| category_id | Foreign Key |
| isbn | Unique ISBN |
| total_copies | Total Copies |
| available_copies | Available Copies |

---

## 4. Members

Stores member information.

| Column | Description |
|---------|-------------|
| member_id | Primary Key |
| full_name | Member Name |
| email | Unique Email |
| phone | Phone Number |
| join_date | Joining Date |

---

## 5. Borrowed_Books

Stores borrowing records.

| Column | Description |
|---------|-------------|
| borrow_id | Primary Key |
| member_id | Foreign Key |
| book_id | Foreign Key |
| borrow_date | Borrow Date |
| due_date | Return Due Date |
| return_date | Actual Return Date |
| fine | Fine Amount |

---

# 🔗 Relationships

```
Authors
    │
    │
    ▼
 Books
    ▲
    │
Categories


Members
    │
    ▼
Borrowed_Books
    ▲
    │
 Books
```

---

# 📋 Features

- Add books
- Store author information
- Store categories
- Register members
- Borrow books
- Return books
- Automatically update available copies
- View currently borrowed books
- Execute predefined SQL queries

---

# 📁 SQL Files Description

## 01_create_database.sql

Creates the database.

```sql
CREATE DATABASE library_db;
```

---

## 02_create_tables.sql

Creates all required tables and relationships.

Tables:

- Authors
- Categories
- Books
- Members
- Borrowed_Books

---

## 03_constraints.sql

Adds constraints like:

- Primary Keys
- Foreign Keys
- CHECK Constraints
- UNIQUE Constraints

---

## 04_insert_data.sql

Inserts sample data.

Contains:

- Authors
- Categories
- Books
- Members
- Borrow Records

---

## 05_views.sql

Creates SQL Views.

Example:

```
Current_Borrowed
```

Displays books that are currently borrowed.

---

## 06_procedures.sql

Contains stored procedures.

Current procedure:

```
BorrowBook(member_id, book_id)
```

Automatically

- Creates borrow record
- Sets borrow date
- Sets due date
- Updates available copies

---

## 07_triggers.sql

Contains database triggers.

Automatically updates book availability whenever books are returned.

---

## 08_queries.sql

Contains useful SQL queries.

Examples:

- View all books
- View members
- View borrowed books
- Count borrowed books
- Top borrowed books
- Current borrowed books

---

# 🚀 How to Run

### Step 1

Clone the repository.

```bash
git clone https://github.com/your-username/Library-Management-System.git
```

---

### Step 2

Open MySQL Workbench.

---

### Step 3

Run the SQL files **in this order**.

```
01_create_database.sql

↓

02_create_tables.sql

↓

03_constraints.sql

↓

04_insert_data.sql

↓

05_views.sql

↓

06_procedures.sql

↓

07_triggers.sql

↓

08_queries.sql
```

---

### Step 4

Refresh the schema.

```
library_db
```

---

### Step 5

Verify the tables.

```sql
SHOW TABLES;
```

---

### Step 6

Check sample data.

```sql
SELECT * FROM books;

SELECT * FROM members;

SELECT * FROM borrowed_books;
```

---

# 📷 Screenshots

Add screenshots here after running the project.

Example:

```
screenshots/

database.png

tables.png

borrowed_books.png

procedure_execution.png
```

---

# 📚 SQL Concepts Used

This project covers:

- CREATE DATABASE
- CREATE TABLE
- INSERT
- SELECT
- UPDATE
- JOIN
- INNER JOIN
- FOREIGN KEY
- PRIMARY KEY
- UNIQUE
- CHECK
- Views
- Stored Procedures
- Triggers
- Aggregate Functions
- GROUP BY
- ORDER BY

---

# 🎯 Learning Outcomes

After completing this project, you will understand:

- Database Design
- Table Relationships
- SQL Constraints
- Data Manipulation
- SQL Views
- Stored Procedures
- Triggers
- Relational Databases
- MySQL Workbench

---

# 🔮 Future Improvements

Possible enhancements:

- Fine Calculation
- ReturnBook Procedure
- Librarian Table
- Publisher Table
- Reservation System
- Login Authentication
- Book Search
- Monthly Reports
- Dashboard Integration
- Web Application using PHP or Python

---

# 👨‍💻 Author

**Lohith Krishna**

GitHub: https://github.com/LOHITH0901

---

# ⭐ If you found this project useful, consider giving it a star on GitHub!
