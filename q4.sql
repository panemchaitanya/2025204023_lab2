-- Roll No: 2025204023
-- Name   : Panem Chaitanya Pavan Kumar
-- Q4: SendWatchTimeReport

DELIMITER $$

CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sid INT;
    DECLARE sname VARCHAR(100);

    DECLARE active_cursor CURSOR FOR
        SELECT DISTINCT s.SubscriberID, s.SubscriberName
        FROM Subscribers s
        INNER JOIN WatchHistory w ON s.SubscriberID = w.SubscriberID;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN active_cursor;

    report_loop: LOOP
        FETCH active_cursor INTO sid, sname;
        IF done THEN
            LEAVE report_loop;
        END IF;

        SELECT CONCAT('Report for Subscriber: ', sname) AS Header;
        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;

    CLOSE active_cursor;
END$$

DELIMITER ;