execute as @s[scores={shocked_active=-1}] run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 1.5

function ss_lib:status/immobilized_jump
execute as @s[scores={shocked_timer=..19}] run scoreboard players operation @s encumbered_amount += @s shocked_timer
execute as @s[scores={shocked_timer=20..}] unless entity @s[scores={encumbered_amount=70..}] run scoreboard players add @s encumbered_amount 20

execute as @s[scores={shocked_timer=..29}] run scoreboard players operation @s hesitant_amount += @s shocked_timer
execute as @s[scores={shocked_timer=30..}] unless entity @s[scores={hesitant_amount=60..}] run scoreboard players add @s hesitant_amount 30

execute at @s run particle electric_spark ~ ~1 ~ 0.4 0.4 0.4 0.1 1

scoreboard players set @s shocked_active 1