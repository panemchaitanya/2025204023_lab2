-- Roll No: 2025204023
-- Name   : Panem Chaitanya Pavan Kumar
-- Q5: ShowHistoryForAll

DELIMITER $$

CREATE PROCEDURE ShowHistoryForAll()
BEGIN
    DECLARE finished INT DEFAULT FALSE;
    DECLARE sid INT;
    DECLARE sname VARCHAR(100);

    DECLARE sub_cursor CURSOR FOR
        SELECT SubscriberID, SubscriberName FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = TRUE;

    OPEN sub_cursor;

    history_loop: LOOP
        FETCH sub_cursor INTO sid, sname;
        IF finished THEN
            LEAVE history_loop;
        END IF;

        SELECT CONCAT('Viewing History for Subscriber: ', sname) AS Info;
        CALL GetWatchHistoryBySubscriber(sid);
    END LOOP;

    CLOSE sub_cursor;
END$$

DELIMITER ;