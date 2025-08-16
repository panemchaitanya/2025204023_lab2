-- Roll No: 2025204023
-- Name   : Panem Chaitanya Pavan Kumar
-- Q1: ListAllSubscribers

DELIMITER $$

CREATE PROCEDURE ListAllSubscribers()
BEGIN
    DECLARE finished INT DEFAULT FALSE;
    DECLARE name_holder VARCHAR(100);

    DECLARE sub_cursor CURSOR FOR
        SELECT SubscriberName FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = TRUE;

    OPEN sub_cursor;

    loop_subs: LOOP
        FETCH sub_cursor INTO name_holder;
        IF finished THEN
            LEAVE loop_subs;
        END IF;
        SELECT name_holder AS `Subscriber Name`;
    END LOOP;

    CLOSE sub_cursor;
END$$

DELIMITER ;