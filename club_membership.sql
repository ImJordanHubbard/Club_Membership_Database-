CREATE DATABASE club_membership_db;
CREATE TABLE membership_type (
    membership_type_id SERIAL PRIMARY KEY,
    membership_name VARCHAR(50),
    membership_description VARCHAR(255),
    fee DECIMAL(15, 2)
);
CREATE TABLE member (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    phone_number VARCHAR(15),
    member_address VARCHAR(100),
    membership_type_id INT,
    join_date DATE,
    expiration_date DATE,
    FOREIGN KEY (membership_type_id) REFERENCES membership_type(membership_type_id)
);
CREATE TABLE club_event (
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE,
    event_address VARCHAR(100)
);
CREATE TABLE event_attendance (
    event_attendance_id SERIAL PRIMARY KEY,
    member_id INT,
    event_id INT,
    attended BOOLEAN,
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (event_id) REFERENCES club_event(event_id)
);
-- Insert Data
INSERT INTO membership_type (membership_name, membership_description, fee)
VALUES (
        'Basic',
        'Basic membership with limited access',
        50.00
    ),
    (
        'Standard',
        'Standard membership with moderate access',
        100.00
    ),
    (
        'Premium',
        'Premium membership with full access',
        200.00
    ),
    (
        'Student',
        'Discounted membership for students',
        30.00
    ),
    (
        'Senior',
        'Discounted membership for seniors',
        40.00
    ),
    (
        'Family',
        'Family membership with additional benefits',
        150.00
    ),
    (
        'Corporate',
        'Corporate membership with multiple user access',
        500.00
    ),
    ('Trial', 'One-month trial membership', 10.00),
    (
        'Lifetime',
        'Lifetime membership with no renewal required',
        1000.00
    ),
    (
        'Executive',
        'Exclusive executive membership with premium services',
        250.00
    );
INSERT INTO member (
        first_name,
        last_name,
        email_address,
        phone_number,
        member_address,
        membership_type_id,
        join_date,
        expiration_date
    )
VALUES (
        'John',
        'Doe',
        'john.doe@example.com',
        '1234567890',
        '123 Elm Street, Springfield',
        1,
        '2024-01-01',
        '2024-12-31'
    ),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        '1234567891',
        '456 Oak Avenue, Springfield',
        2,
        '2024-02-01',
        '2024-12-31'
    ),
    (
        'Alice',
        'Johnson',
        'alice.johnson@example.com',
        '1234567892',
        '789 Pine Road, Springfield',
        3,
        '2024-03-01',
        '2024-12-31'
    ),
    (
        'Bob',
        'Williams',
        'bob.williams@example.com',
        '1234567893',
        '101 Maple Lane, Springfield',
        4,
        '2024-04-01',
        '2024-12-31'
    ),
    (
        'Carol',
        'Brown',
        'carol.brown@example.com',
        '1234567894',
        '202 Birch Boulevard, Springfield',
        5,
        '2024-05-01',
        '2024-12-31'
    ),
    (
        'David',
        'Jones',
        'david.jones@example.com',
        '1234567895',
        '303 Cedar Street, Springfield',
        6,
        '2024-06-01',
        '2024-12-31'
    ),
    (
        'Emma',
        'Davis',
        'emma.davis@example.com',
        '1234567896',
        '404 Walnut Way, Springfield',
        7,
        '2024-07-01',
        '2024-12-31'
    ),
    (
        'Frank',
        'Miller',
        'frank.miller@example.com',
        '1234567897',
        '505 Elm Street, Springfield',
        8,
        '2024-08-01',
        '2024-12-31'
    ),
    (
        'Grace',
        'Wilson',
        'grace.wilson@example.com',
        '1234567898',
        '606 Oak Avenue, Springfield',
        9,
        '2024-09-01',
        '2024-12-31'
    ),
    (
        'Hank',
        'Moore',
        'hank.moore@example.com',
        '1234567899',
        '707 Pine Road, Springfield',
        10,
        '2024-10-01',
        '2024-12-31'
    );
INSERT INTO club_event (event_name, event_date, event_address)
VALUES (
        'Spring Gala',
        '2024-05-01',
        '123 Gala Hall, Springfield'
    ),
    (
        'Summer BBQ',
        '2024-06-15',
        '456 Parkside, Springfield'
    ),
    (
        'Fall Festival',
        '2024-09-10',
        '789 Festival Grounds, Springfield'
    ),
    (
        'Winter Wonderland',
        '2024-12-20',
        '101 Winter Park, Springfield'
    ),
    (
        'Charity Auction',
        '2024-03-12',
        '202 Charity Center, Springfield'
    ),
    (
        'Networking Night',
        '2024-04-25',
        '303 Business Hub, Springfield'
    ),
    (
        'Health Fair',
        '2024-07-22',
        '404 Health Plaza, Springfield'
    ),
    (
        'Book Fair',
        '2024-08-30',
        '505 Bookstore, Springfield'
    ),
    (
        'Art Exhibition',
        '2024-11-05',
        '606 Art Gallery, Springfield'
    ),
    (
        'Tech Expo',
        '2024-10-15',
        '707 Tech Arena, Springfield'
    );
INSERT INTO event_attendance (member_id, event_id, attended)
VALUES (1, 1, TRUE),
    (2, 2, FALSE),
    (3, 3, TRUE),
    (4, 4, TRUE),
    (5, 5, FALSE),
    (6, 6, TRUE),
    (7, 7, FALSE),
    (8, 8, TRUE),
    (9, 9, TRUE),
    (10, 10, FALSE);
-- Alter Table
ALTER TABLE member
ALTER COLUMN email_address
SET NOT NULL,
    ADD CONSTRAINT unique_email_address UNIQUE (email_address);
SELECT *
FROM member;
-- Update Data 
UPDATE member
SET membership_type_id = 1
WHERE member_id = 1;
-- Delete Data
DELETE FROM member
WHERE member_id = 1;
-- Arithmetic Operators
SELECT fee AS current_fee,
    fee + 50 AS new_fee
FROM membership_type;
SELECT fee AS current_fee,
    fee * 0.75 AS discounted_fee
FROM membership_type;
-- Comparison Operators
SELECT *
FROM member
WHERE join_date < '2024-05-01';
SELECT *
FROM member
WHERE join_date > '2024-05-01';
SELECT *
FROM member
WHERE join_date >= '2024-05-01';
SELECT *
FROM member
WHERE join_date < '2024-05-01';
SELECT *
FROM member
WHERE join_date <= '2024-05-01';
SELECT *
FROM member
WHERE join_date <> '2024-05-01';
SELECT *
FROM member
WHERE join_date = '2024-05-01';
-- ORDER BY
SELECT *
FROM member
ORDER BY first_name;
-- ASC is by default
SELECT *
FROM member
ORDER BY first_name DESC;
-- WHERE Clause
SELECT *
FROM member
WHERE membership_type_id = 4
    OR first_name = 'Jane';
SELECT *
FROM member
WHERE membership_type_id IN (5, 2, 6, 1);
SELECT *
FROM member
WHERE join_date BETWEEN '2024-02-01' AND '2024-06-01';
SELECT *
FROM member
WHERE email_address LIKE 'jane%';
SELECT *
FROM member
WHERE NOT member_id = 1;
-- DISTINCT clause
SELECT DISTINCT membership_type_id
FROM member;
-- Aliasing
SELECT COUNT(member_id) AS total_members
FROM member;
-- Inner Join
SELECT member.first_name,
    member.last_name,
    membership_type.membership_name
FROM member
    INNER JOIN membership_type ON member.membership_type_id = membership_type.membership_type_id;
-- Left JOIN
SELECT member.first_name,
    member.last_name,
    membership_type.membership_name
FROM member
    LEFT JOIN membership_type ON member.membership_type_id = membership_type.membership_type_id;
-- Right Join
SELECT member.first_name,
    member.last_name,
    membership_type.membership_name
FROM member
    RIGHT JOIN membership_type ON member.membership_type_id = membership_type.membership_type_id;
-- Self Join
SELECT member.member_id AS member1_id,
    member.first_name AS member1_first_name,
    member.last_name AS member1_last_name,
    other_member.member_id AS member2_id,
    other_member.first_name AS member2_first_name,
    other_member.last_name AS member2_last_name
FROM member
    JOIN member AS other_member ON member.membership_type_id = other_member.membership_type_id;
-- Union keyword
-- Members who attended any event
SELECT DISTINCT member.first_name,
    member.last_name,
    member.email_address,
    member.phone_number
FROM member
    JOIN event_attendance ON member.member_id = event_attendance.member_id
WHERE event_attendance.attended = TRUE
UNION
-- Members with 'Basic' membership
SELECT first_name,
    last_name,
    email_address,
    phone_number
FROM member
WHERE membership_type_id = 1;
-- Group By
INSERT INTO member (first_name, email_address, membership_type_id)
VALUES('Jack', 'jack@jack.com', 1);
SELECT membership_name,
    COUNT(member_id) AS total_members
FROM member
    JOIN membership_type ON member.membership_type_id = membership_type.membership_type_id
GROUP BY membership_name
ORDER BY COUNT(member_id) DESC;
-- HAVING
SELECT first_name,
    membership_name,
    fee AS total_fee
FROM membership_type
    JOIN member ON member.membership_type_id = membership_type.membership_type_id
GROUP BY first_name,
    membership_name,
    total_fee
HAVING fee <= 500
ORDER BY fee DESC;
-- REPLACE (MySQL command with a PostgreSQL solution)
INSERT INTO member (member_id, first_name, last_name, email_address)
VALUES (12, 'Jack', 'Jones', 'jack.jones@jackjones.com') ON CONFLICT (member_id) DO
UPDATE
SET first_name = EXCLUDED.first_name,
    last_name = EXCLUDED.last_name,
    email_address = EXCLUDED.email_address;
-- Constraints
CREATE TABLE event_booking (
    booking_id SERIAL PRIMARY KEY,
    event_id INT NOT NULL,
    member_id INT NOT NULL,
    num_guests INT NOT NULL CHECK(num_guests <= 2),
    FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (event_id) REFERENCES club_event(event_id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO event_booking (event_id, member_id, num_guests)
VALUES (1, 1, 1),
    (2, 2, 2),
    (3, 3, 1),
    (4, 4, 2),
    (5, 5, 1),
    (6, 6, 2),
    (7, 7, 1),
    (8, 8, 2),
    (9, 9, 1),
    (10, 10, 2);
SELECT booking_id,
    event_name,
    first_name,
    last_name,
    num_guests
FROM member
    JOIN event_booking ON member.member_id = event_booking.member_id
    JOIN club_event ON event_booking.event_id = club_event.event_id
ORDER BY num_guests DESC;
-- Alter Keyword
ALTER TABLE event_booking
ADD COLUMN has_allergies BOOLEAN;
ALTER TABLE event_booking
ALTER COLUMN has_allergies NOT NULL;
ALTER TABLE event_booking DROP COLUMN has_allergies;
SELECT *
FROM event_booking;
-- Create Table Copies
CREATE TABLE member_structure (LIKE member INCLUDING ALL);
-- Table Structure
CREATE TABLE member_copy AS TABLE member;
-- Table Structure & Data
CREATE TABLE member_copy2 AS
SELECT *
FROM member
WHERE member_id = 1;
-- Copy part of a table
-- Subquery
SELECT first_name,
    last_name
FROM member
WHERE member_id NOT IN (
        SELECT member_id
        FROM event_attendance
        WHERE attended = TRUE
    );
-- Complext Subqueries
SELECT first_name,
    last_name,
    phone_number,
    email_address
FROM member
WHERE EXISTS (
        -- find and return the details of members who have attended at least one event. 
        SELECT *
        FROM event_attendance
        WHERE event_attendance.member_id = member.member_id
            AND event_attendance.attended = TRUE
    );
SELECT event_name,
    event_date
FROM club_event
WHERE club_event.event_id = ANY (
        SELECT event_attendance.event_id
        FROM event_attendance
            JOIN member ON event_attendance.member_id = member.member_id
        WHERE member.membership_type_id = (
                SELECT membership_type_id
                FROM membership_type
                WHERE membership_name = 'Premium' --returns the names and dates of all events that were attended by members who have a 'Premium' membership.
            )
            AND event_attendance.attended = TRUE
    );
SELECT first_name,
    last_name,
    email_address,
    phone_number
FROM member
WHERE EXISTS (
        SELECT *
        FROM event_attendance
            JOIN club_event ON event_attendance.event_id = club_event.event_id
        WHERE event_attendance.member_id = member.member_id --retrieves details about members who have attended at least one event on or after their join date. 
            AND event_attendance.attended = TRUE
            AND club_event.event_date >= member.join_date
    );
-- Create View
CREATE VIEW active_members AS
SELECT *
FROM member
WHERE expiration_date >= CURRENT_DATE;
-- Create View with Join
CREATE VIEW member_event_summary AS
SELECT member.member_id,
    member.first_name,
    member.last_name,
    membership_type.membership_name,
    COUNT(event_attendance.event_id) AS total_events_attended
FROM member
    JOIN membership_type ON member.membership_type_id = membership_type.membership_type_id
    LEFT JOIN event_attendance ON member.member_id = event_attendance.member_id
    AND event_attendance.attended = TRUE
GROUP BY member.member_id,
    member.first_name,
    member.last_name,
    membership_type.membership_name
ORDER BY member.first_name;
-- Numeric Functions
-- SUM()
SELECT SUM(num_guests) AS total_guests
FROM event_booking;
-- MIN()
SELECT MIN(fee) AS minimum_fee
FROM membership_type;
-- MAX()
SELECT MAX(fee) AS maximum_fee
FROM membership_type;
-- AVG()
SELECT AVG(fee) AS average_fee
FROM membership_type;
-- ROUND()
SELECT membership_name,
    ROUND(fee) AS rounded_fee
FROM membership_type;
-- CEIL()
SELECT CEIL(SUM(num_guests)) AS total_guests
FROM event_booking;
-- FLOOR()
SELECT FLOOR(AVG(fee)) AS rounded_avg_fee
FROM membership_type;
-- String Functions
--TRIM()
SELECT TRIM(email_address) AS cleaned_email
FROM member;
--REPLACE()
UPDATE member
SET email_address = REPLACE(
        email_address,
        'wrongdomain.com',
        'correctdomain.com'
    )
WHERE email_address LIKE '%wrongdomain.com%';
-- CONCAT()
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM member;
-- UPPER()
SELECT UPPER(email_address) AS uppercase_email
FROM member;
-- Lower()
SELECT LOWER(last_name) AS lowercase_last_name
FROM member;
-- CHAR_LENGTH()
SELECT email_address,
    CHAR_LENGTH(email_address) AS length
FROM member;
-- Substring
SELECT SUBSTRING(
        email_address
        FROM POSITION('@' IN email_address) + 1
    ) AS domain
FROM member;
-- Date Functions
-- Get current date and time
SELECT NOW();
-- Get current date only
SELECT CURRENT_DATE;
-- Get current time only
SELECT CURRENT_TIME;
-- Get current timestamp
SELECT CURRENT_TIMESTAMP;
-- Truncate to the start of the month
SELECT DATE_TRUNC('month', CURRENT_DATE);
-- Calculate age from a given date
SELECT AGE(CURRENT_DATE, '1995-11-28');
-- Extract the year from the current date
SELECT DATE_PART('year', CURRENT_DATE);
-- Extract the day from the current date
SELECT EXTRACT(
        day
        FROM CURRENT_DATE
    );
-- Format current date as 'YYYY-MM-DD'
SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD');
-- Convert a string to a date
SELECT TO_DATE('2024-08-31', 'YYYY-MM-DD');


-- Stored Procedures
CREATE OR REPLACE PROCEDURE add_member(
    p_first_name VARCHAR,
    p_last_name VARCHAR,
    p_email_address VARCHAR,
    p_membership_type_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO member (first_name, last_name, email_address, membership_type_id)
    VALUES (p_first_name, p_last_name, p_email_address, p_membership_type_id);
END;
$$;

CALL add_member('Stored', 'Procedure', 'stored.procedure@psql.com', 1);

DELETE FROM member WHERE member_id