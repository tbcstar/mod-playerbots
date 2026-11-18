-- The strategy list a bot saves under the "co" key outgrew the 255 characters of
-- `playerbots_db_store`.`value` once the CoA-only strategies piled up, so the save failed with
-- "Data too long for column 'value'" and the bot lost its strategies at the next login.

ALTER TABLE `playerbots_db_store` MODIFY `value` TEXT DEFAULT NULL;
