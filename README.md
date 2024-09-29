# Building a Club Membership Database from Scratch
In my journey to mastering SQL and database management, I completed a course that taught the fundamentals of SQL. To implement and reinforce these learnings, I undertook a project to develop a Club Membership Database.

This project not only allowed me to apply my SQL skills in a practical setting but also deepened my understanding of core database concepts.

## Table Creation and Modification

I designed tables to manage members, membership types, and event bookings. For example, the member table was created to store individual member details, while the membership_type table contained information about different membership levels.

**CREATE TABLE:** This command is used to create the structure of tables. Each table represents an entity in the database, such as members, membership types, events, and event attendance.

**ALTER TABLE:** I used the ALTER TABLE command to modify existing tables. Specifically, I set a unique constraint on email addresses to ensure that each member’s email is unique and not null, which is crucial for maintaining data integrity.

## Data Manipulation

**Inserting Data:** I populated the tables with sample data using INSERT INTO statements. This involved adding new members and their corresponding membership details, as well as entering information about different membership types and scheduled events.

**INSERT INTO:** This command is used to add new rows of data to a table. By inserting sample data, I was able to create a working dataset to test various queries and operations.

**Updating Data:** I used the UPDATE command to modify existing records. For example, if a member upgraded their membership type, I would use this command to reflect that change in the database.

**UPDATE:** This command modifies existing records in a table. It’s essential for keeping the data up-to-date, such as changing a member’s membership type or updating contact details.

**Deleting Data:** I used the DELETE command to remove records that were no longer needed, which helps maintain the relevance and accuracy of the data.

**DELETE:** This command removes specific rows from a table. It’s used to clean up outdated or no longer applicable data, such as deleting a member who has canceled their membership.

## Querying Data

**Basic Queries:** I retrieved data using SELECT queries to filter results based on certain conditions, such as membership type or member names.

**SELECT:** This command is the cornerstone of data retrieval in SQL. It allows you to specify which columns of data you want to view from a table. By using WHERE, I filtered the data to return only those rows that met specific criteria, such as members with a particular membership type.

**Arithmetic and Comparison Operators:** These operators allowed me to perform calculations (e.g., adjusting membership fees) and filter data based on criteria (e.g., dates or values).

## Joining Tables

**INNER JOIN:** This command combined rows from two tables based on a related column, enabling me to link members with their respective membership types.

**LEFT JOIN & RIGHT JOIN:** These commands were used to include all records from one table and only matched records from the other. This was useful for ensuring that no data from the primary table was omitted, even if no corresponding data was in the joined table.

**SELF JOIN:** The SELF JOIN was utilised to compare rows within the same table, helping to find members who shared the same membership type.

## Grouping & Aggregation

**GROUP BY:** This command allowed me to aggregate data and produce summaries, such as counting the number of members per membership type.

**HAVING:** The HAVING clause was used to filter aggregated results, such as showing only membership types with fees below a certain amount.

## Advanced Queries

**Subqueries:** Subqueries were essential for performing complex data retrieval. For instance, I used them to find members who attended events or who belonged to specific membership types.

**VIEWS:** Views were created to simplify data access and reporting. They allowed complex queries to be stored and reused, offering a simplified interface to frequently accessed data, such as summarising member activities or active memberships.

## Managing Data with SQL Functions and Procedures

**Functions:** SQL functions were used to perform numeric, string, and date functions on data, such as calculating totals, manipulating strings, or working with dates.

**Stored Procedures:** I created reusable blocks of SQL code, known as stored procedures, to streamline complex operations and ensure consistency. For example, I wrote a procedure to add new members to the database, encapsulating the logic into a single callable function.

This project is my first major application of SQL. By creating and managing a Club Membership Database, I gained hands-on experience with key SQL tasks, including table design, data manipulation, and complex queries.
