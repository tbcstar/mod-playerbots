/*
 * This file is part of the mod-playerbots module for AzerothCore. See AUTHORS file for Copyright
 * information; released under GNU GPL v2 license, redistribute/modify under version 2 of the License,
 * or (at your option) any later version.
 */

#include "LfgStrategy.h"
#include "Playerbots.h"

void LfgStrategy::InitTriggers(std::vector<TriggerNode*>& triggers)
{
    triggers.push_back(new TriggerNode("random", { NextAction("lfg join", relevance) }));
    // A team waiting without a tank or a healer queues its bots of that role on every check, not only when "random"
    // comes up: a queue that never saw a tank stayed empty for as long as the dice said so.
    triggers.push_back(new TriggerNode("lfg missing role", { NextAction("lfg join", relevance) }));
    triggers.push_back(
        new TriggerNode("seldom", { NextAction("lfg leave", relevance) }));
    triggers.push_back(new TriggerNode(
        "unknown dungeon", { NextAction("give leader in dungeon", relevance) }));
}

LfgStrategy::LfgStrategy(PlayerbotAI* botAI) : PassThroughStrategy(botAI) {}
