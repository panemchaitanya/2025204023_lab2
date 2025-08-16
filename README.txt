README - Lab 2 (SQL Stored Procedures & Cursors)

Student Name : Panem Chaitanya Pavan Kumar
Roll Number  : 2025204023
Course       : CS6.302 - Software System Development
Lab          : 2


FILES INCLUDED IN THIS SUBMISSION:
q1.sql  - ListAllSubscribers()
q2.sql  - GetWatchHistoryBySubscriber(IN sub_id INT)
q3.sql  - AddSubscriberIfNotExists(IN subName VARCHAR(100))
q4.sql  - SendWatchTimeReport()
q5.sql  - ShowHistoryForAll()
README.txt 


EXECUTION STEPS
1. Open MySQL Workbench and connect to your database.

2. Run the provided CREATE TABLE and INSERT statements
   from the assignment to set up the required schema:
   - Shows
   - Subscribers
   - WatchHistory
3. To load each stored procedure:
   - Open the respective qX.sql file (q1.sql, q2.sql, etc.).
   - Execute the script in MySQL Workbench.
4. To call a procedure:

   - Use the CALL statement.
   - Examples:
     CALL ListAllSubscribers();
     CALL GetWatchHistoryBySubscriber(1);
     CALL AddSubscriberIfNotExists('John Doe');
     CALL SendWatchTimeReport();
     CALL ShowHistoryForAll();

5. Verify the output as per the assignment requirements.


GitHub Repo Link: [PLEASE INSERT YOUR GITHUB LINK HERE]
