DELETE `stale` FROM `playerbots_random_bots` AS `stale` JOIN `playerbots_random_bots` AS `newest` ON `newest`.`owner` = `stale`.`owner` AND `newest`.`bot` = `stale`.`bot` AND `newest`.`event` = `stale`.`event` AND `newest`.`id` > `stale`.`id`;
SET @event_key_exists := (SELECT `index_name` FROM `information_schema`.`statistics` WHERE `table_schema` = DATABASE() AND `table_name` = 'playerbots_random_bots' AND `index_name` = 'owner_bot_event' LIMIT 1);
SET @ddl := IF(@event_key_exists IS NULL, 'ALTER TABLE `playerbots_random_bots` ADD UNIQUE KEY `owner_bot_event` (`owner`, `bot`, `event`)', 'SET @event_key_present := 1');
PREPARE `add_event_key` FROM @ddl;
EXECUTE `add_event_key`;
DEALLOCATE PREPARE `add_event_key`;
