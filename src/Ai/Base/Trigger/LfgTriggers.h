/*
 * This file is part of the mod-playerbots module for AzerothCore. See AUTHORS file for Copyright
 * information; released under GNU GPL v2 license, redistribute/modify under version 2 of the License,
 * or (at your option) any later version.
 */

#ifndef PLAYERBOTS_LFGTRIGGERS_H
#define PLAYERBOTS_LFGTRIGGERS_H

#include "Trigger.h"

class PlayerbotAI;

class LfgProposalActiveTrigger : public Trigger
{
public:
    LfgProposalActiveTrigger(PlayerbotAI* botAI) : Trigger(botAI, "lfg proposal active", 1000) {}

    bool IsActive() override;
};

class UnknownDungeonTrigger : public Trigger
{
public:
    UnknownDungeonTrigger(PlayerbotAI* botAI) : Trigger(botAI, "unknown dungeon", 20 * 2000) {}

    bool IsActive() override;
};

// A real player of this bot's team waits for a dungeon with no tank (or no healer) queued: a bot of that role joins
// the queue on the next check instead of waiting for the "random" trigger, which left the count to chance.
class LfgMissingRoleTrigger : public Trigger
{
public:
    LfgMissingRoleTrigger(PlayerbotAI* botAI) : Trigger(botAI, "lfg missing role", 5000) {}

    bool IsActive() override;
};

#endif
