-- Roll No: 2025204023
-- Name   : Panem Chaitanya Pavan Kumar
-- Q2: GetWatchHistoryBySubscriber

DELIMITER $$

CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT sh.Title AS 'Show Title',
           wh.WatchTime AS 'Watch Time (mins)'
    FROM WatchHistory wh
    INNER JOIN Shows sh ON sh.ShowID = wh.ShowID
    WHERE wh.SubscriberID = sub_id;
END$$

DELIMITER ;