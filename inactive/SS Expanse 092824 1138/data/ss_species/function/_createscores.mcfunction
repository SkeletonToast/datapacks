# scoreboard objectives add BetaVersion dummy
# scoreboard objectives add BetaExpiratorTimer dummy

scoreboard objectives add species dummy
scoreboard objectives add HasSpecies dummy

scoreboard objectives add species001-02 dummy
# number of Souls
scoreboard objectives add species001-03 dummy
# eligible for soul? 1 = yes, 0 = no. updated to 1 whenever player has 30 or more levels.
scoreboard objectives add species001-04 dummy
# used as timer for when to give shard and send message

# scoreboard objectives add species002-01 dummy
# building anchor ID
scoreboard objectives add species002-02 minecraft.custom:minecraft.jump
scoreboard objectives add species002-03 dummy
# damagedealt timer

scoreboard objectives add species003-01 minecraft.killed:minecraft.zombie
scoreboard objectives add species003-02 minecraft.killed:minecraft.skeleton
scoreboard objectives add species003-03 minecraft.killed:minecraft.creeper
scoreboard objectives add species003-04 minecraft.killed:minecraft.drowned
scoreboard objectives add species003-05 minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add species003-06 minecraft.killed:minecraft.pillager
scoreboard objectives add species003-07 minecraft.killed:minecraft.vindicator
scoreboard objectives add species003-08 minecraft.killed:minecraft.evoker
scoreboard objectives add species003-09 minecraft.killed:minecraft.ravager
scoreboard objectives add species003-10 minecraft.killed:minecraft.iron_golem
scoreboard objectives add species003-11 minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add species003-12 minecraft.killed:minecraft.piglin
scoreboard objectives add species003-13 minecraft.killed:minecraft.enderman
scoreboard objectives add species003-14 minecraft.killed:minecraft.shulker
scoreboard objectives add species003-15 minecraft.killed:minecraft.ender_dragon
scoreboard objectives add species003-16 minecraft.killed:minecraft.wither
scoreboard objectives add species003-20 minecraft.used:minecraft.rotten_flesh
scoreboard objectives add species003-21 dummy
# golem link
scoreboard objectives add species003-22 dummy
# rotten flesh timer

scoreboard objectives add species004-01 dummy
# just for actual statistical purposes
scoreboard objectives add species004-02 minecraft.custom:minecraft.mob_kills
# scoreboard objectives add species004-03 playerKillCount
scoreboard objectives add species004-04 dummy
scoreboard objectives add species004-05 dummy
# scoreboard objectives add species004-06 minecraft.used:minecraft.bow
scoreboard objectives add species004-07 dummy

scoreboard objectives add species005-05 dummy

scoreboard objectives add species006-01 dummy
    # feldspari armor
scoreboard objectives add species006-02 dummy
    # stagger health
scoreboard objectives add species006-03 dummy
    # feldspari damage timer
scoreboard objectives add species006-04 dummy
    # feldspari stored damage
scoreboard objectives add species006-05 dummy
    # ineligibility
scoreboard objectives add species006-urid dummy

scoreboard objectives add species007-01 dummy
    # swing gravity timer
scoreboard objectives add species007-02 dummy
    # swing charges
scoreboard objectives add species007-04 minecraft.custom:minecraft.sneak_time
scoreboard objectives add species007-05 minecraft.custom:minecraft.jump

scoreboard objectives add species008-02 dummy
# silk touch reset timer

scoreboard objectives add species008-03 minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add species008-04 minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add species008-05 minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add species008-06 minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add species008-07 minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add species008-08 minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add species008-09 minecraft.mined:minecraft.deepslate
scoreboard objectives add species008-10 minecraft.mined:minecraft.stone

scoreboard objectives add species009-01 minecraft.used:minecraft.rotten_flesh
scoreboard objectives add species009-02 minecraft.used:minecraft.mushroom_stew
scoreboard objectives add species009-04 dummy
# mushroom at feet timer
scoreboard objectives add species009-05 dummy
# damage taken timer
scoreboard objectives add species009-06 dummy
# proximity healing effect
scoreboard objectives add species009-07 dummy
# proximity healing timer
scoreboard objectives add species009-08 dummy
# spore cloud cooldown
scoreboard objectives add species009-09 minecraft.custom:minecraft.sneak_time

scoreboard objectives add species010-01 dummy
# effect give timer

scoreboard objectives add species011-01 dummy
# in water detection
scoreboard objectives add species011-02 minecraft.used:minecraft.dried_kelp
scoreboard objectives add species011-04 minecraft.used:minecraft.potion
# water bottle
scoreboard objectives add species011-05 dummy
# dehydration immunity timer

scoreboard objectives add species012-01 dummy
# evolution stage

scoreboard objectives add PlayerDeaths minecraft.killed_by:minecraft.player
scoreboard objectives add PlayerKillsGhost playerKillCount
scoreboard objectives add MobKillsGhost minecraft.custom:minecraft.mob_kills
# scoreboard objectives add species013-01 dummy
scoreboard objectives add species013-03 dummy

scoreboard objectives add species014-00 dummy
scoreboard objectives add species014-01 minecraft.custom:minecraft.damage_dealt
scoreboard objectives add species014-02 dummy
scoreboard objectives add species014-03 dummy
# scoreboard objectives add species014-04 minecraft.custom:minecraft.jump
scoreboard objectives add species014-05 dummy
scoreboard objectives add species014-06 dummy

scoreboard objectives add species017-00 dummy
scoreboard objectives add species017-01 dummy
    # transformation stone counter
scoreboard objectives add species017-02 dummy
    # wing give timer
scoreboard objectives add species017-03 dummy
    # particle cooldown
scoreboard objectives add ChangelingStoredSpecies dummy
scoreboard objectives add ChangelingUnlockedSpecies dummy
scoreboard objectives add ChangelingVariable dummy
scoreboard objectives add ChangelingKilledWither minecraft.killed:minecraft.wither
scoreboard objectives add ChangelingKilledElderGuardian minecraft.killed:minecraft.elder_guardian

scoreboard objectives add species018-02 minecraft.broken:minecraft.shield

scoreboard objectives add species019-01 dummy
scoreboard objectives add species019-02 minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add species019-03 dummy

scoreboard objectives add species020-01 minecraft.killed:minecraft.warden
scoreboard objectives add species020-02 minecraft.used:totem_of_undying

scoreboard objectives add species021-01 minecraft.custom:minecraft.jump

scoreboard objectives add species022-04 dummy

scoreboard objectives add species023-01 minecraft.custom:minecraft.player_kills
scoreboard objectives add species023-02 minecraft.custom:minecraft.mob_kills

scoreboard objectives add species024-01 minecraft.custom:minecraft.sneak_time

scoreboard objectives add species025-01 dummy
scoreboard objectives add species025-02 minecraft.used:firework_rocket
scoreboard objectives add species025-03 dummy
    #maneuverability timer
scoreboard objectives add species025-04 dummy
    #amt of boosts in inventory
scoreboard objectives add species025-04_01 dummy
    #stored boosts
scoreboard objectives add species025-05 dummy
    #maximum allotted amt of boosts
scoreboard objectives add species025-06 dummy
    #boost increase score
scoreboard objectives add species025-07 dummy
    #boost increase threshold
scoreboard objectives add species025-08 dummy
    #boost visual effect timer
    
scoreboard objectives add species026-01 dummy
    #holiness check
scoreboard objectives add species026-02 dummy
scoreboard objectives add species026-03 dummy
    #healing field
scoreboard objectives add species026-04 minecraft.custom:minecraft.damage_dealt

scoreboard objectives add species028-01 dummy
    #"isolation"

scoreboard objectives add Ghost dummy

team add Ghosts
team modify Ghosts seeFriendlyInvisibles true
team modify Ghosts friendlyFire false

team add Shadowbringers
team modify Shadowbringers friendlyFire false

team add Spiders
team modify Spiders friendlyFire false