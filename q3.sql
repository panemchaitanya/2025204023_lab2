-- Roll No: 2025204023
-- Name   : Panem Chaitanya Pavan Kumar
-- Q3: AddSubscriberIfNotExists

DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Subscribers WHERE SubscriberName = subName) THEN
        INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());
        SELECT CONCAT('Added subscriber: ', subName) AS Result;
    ELSE
        SELECT CONCAT('Subscriber already exists: ', subName) AS Result;
    END IF;
END$$

DELIMITER ;