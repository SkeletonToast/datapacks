execute as @a[scores={class001=1..}] run attribute @s generic.max_health base set 10
tag @a[scores={class001=1..}] add Staggerable
execute as @a[scores={class001=1..}] at @s unless entity @e[type=#ss_library:hostile,distance=..5] run tag @s add StaggerHealing
scoreboard players set @a[scores={class001=1..,StaggerRechargeTimer=..7999}] StaggerRechargeTimer 8000
execute as @a[scores={class001=1..,feeble_active=-1}] run function ss_statuses:feeble {"multiplier":"0.1"}
    # execute as @a[scores={class001=1..}] if score @s Health < @s BaseMaxHealth run function ss_statuses:feeble {"multiplier":"0.1"}
execute as @a[scores={class001=1..,TotalHealth=4..5}] run scoreboard players set @s unnerved_timer 1
execute as @a[scores={class001=1..,TotalHealth=2..3}] run scoreboard players set @s frightened_timer 1
execute as @a[scores={class001=1..,TotalHealth=..1}] run scoreboard players set @s terrified_timer 1
execute at @a[scores={class001=1..,RestOrRespawn=1}] run function ss_statuses:invigorated {"duration":"600","amplifier":"0"}

# "population"
    # execute at @a[scores={class001=1..,RestOrRespawn=1}] run summon area_effect_cloud ~ ~ ~ {Duration:36000,Tags:["class001"]}

    # scoreboard players set @a class001-01 0
    # execute as @a at @s run scoreboard players add @a[distance=..100] class001-01 1
    # execute at @e[type=area_effect_cloud,tag=class001] run scoreboard players add @a[distance=..50] class001-01 5
    # execute as @a[scores={class001=1..,class001-01=5..}] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}
    # execute as @a[scores={class001=1..,class001-01=10..}] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}

# ineligible species
execute as @s[scores={class001=1..,species=001}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=003}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=004}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=006}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=012}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=014}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=017}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=018}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=019}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=022}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=023}] run function ss_statuses:disabled
execute as @s[scores={class001=1..,species=026}] run function ss_statuses:disabled

# ineligible classes
scoreboard players set @s[scores={class001=1..}] class002 0
scoreboard players set @s[scores={class001=1..}] class003 0
scoreboard players set @s[scores={class001=1..}] class004 0
scoreboard players set @s[scores={class001=1..}] class005 0
scoreboard players set @s[scores={class001=1..}] class008 0
scoreboard players set @s[scores={class001=1..}] class009 0
scoreboard players set @s[scores={class001=1..}] class010 0

# good health
execute as @a[scores={class001=1..,Food=..19}] if score @s Health >= @s BaseMaxHealth run effect give @s minecraft:saturation 1 0 true

# monster pacification
execute at @a[scores={class001=1..}] as @e[type=#ss_library:hostile,distance=5..15] at @s on target if entity @s[scores={class001=1..}] as @n[type=#ss_library:hostile,distance=0] run tag @s add Pacified