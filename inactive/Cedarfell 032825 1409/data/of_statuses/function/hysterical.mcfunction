execute unless entity @s[scores={hysterical_active=-1..}] run scoreboard players set @s hysterical_active -1
execute as @s[scores={hysterical_super=1}] on attacker run scoreboard players add @s terrified_timer 5
execute unless entity @s[scores={hysterical_super=1}] on attacker run scoreboard players add @s frightened_timer 3

execute unless entity @s[scores={hysterical_super=1}] run function ss_statuses:frightening
execute as @s[scores={hysterical_super=1}] run function ss_statuses:terrifying
scoreboard players add @s aggressive_amount 20
scoreboard players remove @s encumbered_amount 20
scoreboard players add @s[scores={hysterical_super=1}] aggressive_amount 20
scoreboard players remove @s[scores={hysterical_super=1}] encumbered_amount 20

effect clear @s[scores={hysterical_super=1}] weakness
effect clear @s[scores={hysterical_super=1}] slowness
effect clear @s[scores={hysterical_super=1}] mining_fatigue

execute as @a[distance=..20] run function of_statuses:threatened

scoreboard players add @s trait001 3
execute as @s[scores={hysterical_active=-1}] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.7 0.7
execute as @s[scores={hysterical_active=-1}] at @s run playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 1 1.2
execute as @s[scores={hysterical_active=-1}] run team add Hysterical
execute as @s[scores={hysterical_active=-1}] run team modify Hysterical color red
execute as @s[scores={hysterical_active=-1}] run team join Hysterical
execute as @s[scores={hysterical_active=-1}] run effect give @s glowing 1 0 true
execute as @s[scores={hysterical_active=-1}] run team leave @s
execute as @s[scores={hysterical_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#ff0000","status":"Hysterical","append":""}

# execute if predicate ss_lib:random_1_percent if predicate ss_lib:random_50_percent at @s run function of_statuses:hysterical_growl

attribute @s[scores={hysterical_super=1}] scale modifier add hysterical_scale 0.15 add_value
attribute @s[scores={hysterical_super=1}] entity_interaction_range modifier add hysterical_entity_interaction_range 2 add_value
attribute @s scale modifier add hysterical_scale 0.1 add_value
attribute @s entity_interaction_range modifier add hysterical_entity_interaction_range 1 add_value

execute as @a[distance=..10] unless entity @s[scores={hysterical_active=0..}] run function of_statuses:threatened

scoreboard players set @s hysterical_active 1