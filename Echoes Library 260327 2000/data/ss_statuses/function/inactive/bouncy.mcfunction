attribute @s minecraft:gravity modifier add bouncy_gravity -0.1 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add bouncy_fall_damage_multiplier -1 add_multiplied_total

scoreboard players set @s[scores={bouncy_amount=..0},predicate=ss_lib:is/falling] bouncy_amount 0
scoreboard players add @s[scores={bouncy_amount=..0},predicate=ss_lib:is/falling,predicate=ss_statuses:fallen_4_blocks] bouncy_amount 19
scoreboard players add @s[predicate=ss_lib:is/falling,predicate=ss_statuses:fallen_4_blocks] bouncy_amount 1
scoreboard players remove @s[scores={bouncy_amount=1..},predicate=ss_lib:is/ascending] bouncy_amount 9

execute at @s[scores={bouncy_amount=1..}] unless block ~ ~-0.05 ~ #ss_lib:nonsolidblocks run particle block{block_state:"minecraft:slime_block"} ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute at @s[scores={bouncy_amount=1..}] unless block ~ ~-0.05 ~ #ss_lib:nonsolidblocks run playsound minecraft:entity.slime.squish player @a
execute at @s[scores={bouncy_amount=1..}] unless block ~ ~-0.05 ~ #ss_lib:nonsolidblocks run attribute @s minecraft:gravity modifier add bouncy_bounce_gravity -6 add_multiplied_total
execute at @s[scores={bouncy_amount=1..},predicate=ss_lib:is/ascending] if block ~ ~-0.11 ~ #ss_lib:nonsolidblocks run attribute @s minecraft:gravity modifier add bouncy_bounce_gravity -5 add_multiplied_total

attribute @s[scores={bouncy_amount=0}] minecraft:gravity modifier remove bouncy_bounce_gravity

scoreboard players set @s bouncy_active 1