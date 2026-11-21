/*
 * This file is part of the mod-playerbots module for AzerothCore. See AUTHORS file for Copyright
 * information; released under GNU GPL v2 license, redistribute/modify under version 2 of the License,
 * or (at your option) any later version.
 */

#include "LfgTriggers.h"
#include "Playerbots.h"

bool LfgProposalActiveTrigger::IsActive() { return AI_VALUE(uint32, "lfg proposal"); }

bool UnknownDungeonTrigger::IsActive()
{
    return IsRealPlayer(botAI->GetMaster()) && botAI->GetMaster() && botAI->GetMaster()->IsInWorld() &&
           botAI->GetMaster()->GetMap()->IsDungeon() && bot->GetMapId() == botAI->GetMaster()->GetMapId();
}

bool LfgMissingRoleTrigger::IsActive()
{
    if (!bot || !sPlayerbotAIConfig.randomBotJoinLfg)
        return false;

    uint8 const team = bot->GetTeamId();
    if (team > TEAM_HORDE)
        return false;

    RandomPlayerbotMgr& mgr = RandomPlayerbotMgr::instance();
    // A tank (by specialization, as the queue reports it) for a team whose players wait without one.
    if (mgr.LfgNeedTank[team] && PlayerbotAI::IsTank(bot, true))
        return true;
    return mgr.LfgNeedHeal[team] && PlayerbotAI::IsHeal(bot, true);
}
