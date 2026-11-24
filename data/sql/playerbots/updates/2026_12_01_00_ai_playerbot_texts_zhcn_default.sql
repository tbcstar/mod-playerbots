-- 机器人说话：让 enUS 客户端也能看到中文。
-- AiPlayerbot.BotTextLocale 为 -1 时按在线客户端语言选列，本服客户端是 enUS，
-- 于是永远读 `text` 列（英文），上一批只补了 `text_loc4`，中文根本没被用上。
-- 这里把已经翻好的 text_loc4 回填到 text，插件类改写（ZHBotChat）就不需要了。
-- 可重复执行：条件为两列不相等。

UPDATE `ai_playerbot_texts` SET `text` = `text_loc4` WHERE `text_loc4` <> '' AND `text` <> `text_loc4`;
