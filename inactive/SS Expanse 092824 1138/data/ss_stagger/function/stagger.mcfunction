scoreboard players set @a[tag=!Staggerable] StaggerEligible -2

# execute as @a run scoreboard players operation @s StaggerHealth = @s Health
# execute as @a[scores={StaggerEligible=1}] run scoreboard players operation @s StaggerHealth += @s StaggerHealth

execute as @a[scores={SoftTimeSinceDeath=1}] run attribute @s minecraft:generic.max_health modifier remove stagger_eligible_max_health
scoreboard players set @a[scores={SoftTimeSinceDeath=1}] StaggerRechargeTimer 0
scoreboard players set @a[scores={SoftTimeSinceDeath=1}] StaggerEligible 1
scoreboard players set @a[scores={SoftTimeSinceDeath=1}] Staggered 0

execute as @a[scores={StaggerEligible=0,Food=16..,Staggered=0,StaggerRechargeTimer=..12000}] if score @s Health >= @s BaseMaxHealth run scoreboard players add @s StaggerRechargeTimer 1
scoreboard players set @a[scores={StaggerEligible=0,Staggered=0,StaggerRechargeTimer=6000..,RestOrRespawn=1}] StaggerEligible 12000
scoreboard players set @a[scores={StaggerRechargeTimer=12001}] StaggerEligible 1
    # scoreboard players set @a[scores={StaggerRechargeTimer=12001..,StaggerEligible=0}] StaggerRechargeTimer 12001
tellraw @a[scores={StaggerRechargeTimer=12001}] [{"text":"You feel fully recovered from your near-death experience. You can withstand another fatal blow, if you must.","color":"dark_green"},{"text":"\n"},{"text":"+Your Stagger has been recharged.","color":"gray","italic":true}]
execute as @a[scores={StaggerRechargeTimer=12001}] at @s run playsound entity.player.levelup player @s
    # scoreboard players set @a[scores={StaggerRechargeTimer=12001}] StaggerRechargeTimer 0
execute as @a[scores={StaggerEligible=1},tag=Staggerable] run attribute @s minecraft:generic.max_health modifier add stagger_eligible_max_health 1 add_multiplied_base
        # idrk why i have to add tag=staggerable here because line 1 is supposed to prevent this but fuckin whatever
execute as @a[scores={StaggerEligible=0}] run attribute @s minecraft:generic.max_health modifier remove stagger_eligible_max_health
effect give @a[scores={StaggerRechargeTimer=12001}] minecraft:instant_health 1 4 true
scoreboard players add @a[scores={StaggerRechargeTimer=12001..}] StaggerRechargeTimer 1

execute as @a[scores={DamageTaken=1..,Health=..0,TimeSinceDeath=20..,StaggerEligible=1}] run scoreboard players set @s Staggered 1
execute as @a[scores={StaggerEligible=1,Staggered=1}] run title @s title [""]
execute as @a[scores={StaggerEligible=1,Staggered=1}] run title @s subtitle [{"text":"- Staggered -","color":"#ff0000"}]
scoreboard players set @a[scores={Staggered=1}] StaggerEligible 0

execute as @a[scores={Staggered=1}] run scoreboard players add @s encumbered_amount 70
execute as @a[scores={Staggered=1}] run function ss_statuses:hesitant {"multiplier":"0.8"}
execute as @a[scores={Staggered=1}] run function ss_statuses:fragile {"multiplier":"0.5"}
effect give @a[scores={Staggered=1}] minecraft:darkness 2 0 true
scoreboard players set @a[scores={StaggerRevivalTimer=..0}] Staggered 0
scoreboard players set @a[scores={Staggered=1}] StaggerRechargeTimer 0

execute at @a[scores={Staggered=1}] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 1 1 normal @a

scoreboard players set @a[scores={Staggered=0}] StaggerRevivalTimer 400
execute as @a[scores={Staggered=1}] if entity @a[distance=..3,scores={Staggered=0},predicate=ss_library:is_sneaking] run tag @s add StaggerHealing
scoreboard players remove @a[scores={Staggered=1,ability017=0},tag=!StaggerHealing] StaggerDeathTimer 2
scoreboard players add @a[scores={Staggered=1},tag=StaggerHealing] StaggerDeathTimer 1
scoreboard players remove @a[tag=StaggerHealing] StaggerRevivalTimer 2
scoreboard players add @a[scores={Staggered=1},tag=!StaggerHealing] StaggerRevivalTimer 1
scoreboard players set @a[scores={Staggered=1,StaggerDamageTaken=10..}] StaggerRevivalTimer 400
scoreboard players remove @a[scores={StaggerDamageTaken=10..}] StaggerDeathTimer 20
scoreboard players set @a[scores={StaggerDamageTaken=10..}] StaggerDamageTaken 0
scoreboard players set @a[scores={StaggerDamageTaken=0}] StaggerDamageTaken -1
effect give @a[scores={TimeSinceDeath=..20}] minecraft:regeneration 1 255 true
scoreboard players set @a[scores={StaggerEligible=1}] StaggerDeathTimer 1200
scoreboard players set @a[scores={StaggerEligible=1}] StaggerRevivalTimer 400
scoreboard players set @a[scores={StaggerRevivalTimer=401..}] StaggerRevivalTimer 400

tag @a remove StaggerHealing

kill @e[type=!#ss_library:not_alive,scores={Staggered=1,StaggerDeathTimer=..0,TimeSinceDeath=100..}]
title @a[scores={Staggered=1}] actionbar [{"text":"You are nearing death. Have an ally revive you by crouching near you. Remaining health: ","color":"dark_red"},{"score":{"name":"*","objective":"StaggerDeathTimer"},"color":"red"},{"text":"/","color":"dark_red"},{"score":{"name":"*","objective":"StaggerRevivalTimer"},"color":"green"}]

scoreboard players set @a[scores={StaggerEligible=-1}] StaggerRevivalTimer 0

scoreboard players add @a[scores={StaggerEligible=..-1}] StaggerEligible 1

# use this for disabling staggering for certain species or whatever
# scoreboard players set @a[condition] StaggerEligible -1

# if you want to reenable staggers after a cooldown or whatever
# recharge timer increases while revivaltimer = 0
# recharge timer is set to 0 on timesincedeath = 1
# set staggereligible to 1 when recharge timer reaches whatever
# also have a message saying "stagger recharged"
# you could also have it so that your stagger only recharges while food and health are full

# reworking
# have a stagger tag "Staggered"
# this tag is applied when someone is staggered, however, it's only applied if that person is StaggerEligible
# When they're revived or on TimeSinceDeath = 1, Staggered tag is removed
# the stagger effects only work with people who have the Staggered tag
# health modifications are also only applied to StaggerEligible people
# this way, creatures that aren't StaggerEligible can just have StaggerEligible set to -2 or whatever, and nothing will ever affect them