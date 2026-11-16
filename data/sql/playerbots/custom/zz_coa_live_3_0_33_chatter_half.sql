-- Halves how often the random bots write on a channel or at a place: the per situation chance that a
-- bot reacts and the ceiling of lines per channel or place over ten minutes. Whisper answers, a line's
-- delay and its cooldowns stay: a player who whispers a bot still gets an answer, and pairs of lines
-- still follow each other like players typing.

UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 12, `scope_per_10min` = 3 WHERE `situation` = 'greet_pass' AND `chance_pct` = 25 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 20, `scope_per_10min` = 3 WHERE `situation` = 'levelup_seen' AND `chance_pct` = 40 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 30, `scope_per_10min` = 3 WHERE `situation` = 'levelup_self' AND `chance_pct` = 60 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 35, `scope_per_10min` = 3 WHERE `situation` = 'duel_won' AND `chance_pct` = 70 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 35, `scope_per_10min` = 3 WHERE `situation` = 'duel_lost' AND `chance_pct` = 70 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 17, `scope_per_10min` = 3 WHERE `situation` = 'buff_received' AND `chance_pct` = 35 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 40, `scope_per_10min` = 3 WHERE `situation` = 'rez_received' AND `chance_pct` = 80 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 15, `scope_per_10min` = 3 WHERE `situation` = 'boss_pull' AND `chance_pct` = 30 AND `scope_per_10min` = 6;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 5, `scope_per_10min` = 2 WHERE `situation` = 'inn_idle' AND `chance_pct` = 10 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 2, `scope_per_10min` = 2 WHERE `situation` = 'city_idle' AND `chance_pct` = 5 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 5, `scope_per_10min` = 2 WHERE `situation` = 'general_chat' AND `chance_pct` = 10 AND `scope_per_10min` = 5;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 5, `scope_per_10min` = 2 WHERE `situation` = 'trade_wts' AND `chance_pct` = 10 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 4, `scope_per_10min` = 2 WHERE `situation` = 'trade_wtb' AND `chance_pct` = 8 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 2, `scope_per_10min` = 1 WHERE `situation` = 'trade_chat' AND `chance_pct` = 5 AND `scope_per_10min` = 3;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 4, `scope_per_10min` = 2 WHERE `situation` = 'lfg_lfm' AND `chance_pct` = 8 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 3, `scope_per_10min` = 2 WHERE `situation` = 'lfg_lfg' AND `chance_pct` = 6 AND `scope_per_10min` = 4;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 17, `scope_per_10min` = 4 WHERE `situation` = 'guild_login' AND `chance_pct` = 35 AND `scope_per_10min` = 8;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 15, `scope_per_10min` = 4 WHERE `situation` = 'guild_self_login' AND `chance_pct` = 30 AND `scope_per_10min` = 8;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 25, `scope_per_10min` = 4 WHERE `situation` = 'guild_levelup' AND `chance_pct` = 50 AND `scope_per_10min` = 8;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 17, `scope_per_10min` = 4 WHERE `situation` = 'guild_loot' AND `chance_pct` = 35 AND `scope_per_10min` = 8;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 20, `scope_per_10min` = 4 WHERE `situation` = 'guild_self_loot' AND `chance_pct` = 40 AND `scope_per_10min` = 8;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 2, `scope_per_10min` = 1 WHERE `situation` = 'guild_idle' AND `chance_pct` = 5 AND `scope_per_10min` = 3;
UPDATE `playerbots_coa_live_rules` SET `chance_pct` = 20, `scope_per_10min` = 4 WHERE `situation` = 'guild_logout' AND `chance_pct` = 40 AND `scope_per_10min` = 8;
