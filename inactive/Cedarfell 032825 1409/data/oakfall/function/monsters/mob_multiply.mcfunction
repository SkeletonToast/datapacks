scoreboard players set @p[distance=0] of_mob_multiply_limit 0
scoreboard players add @p[distance=0] of_mob_multiply_limit 1
execute if entity @p[distance=0,scores={of_mob_multiply_limit=15..}] run return fail

execute at @s[type=zombie] positioned ~ ~ ~ run summon zombie

execute at @s[type=skeleton] positioned ~ ~ ~ run summon zombie

execute at @s[type=creeper] positioned ~ ~ ~ run summon creeper

execute at @s[type=enderman] positioned ~ ~ ~ run summon enderman
execute at @s[type=enderman] positioned ~ ~ ~ run summon endermite

execute at @s[type=spider] positioned ~ ~ ~ run summon spider

execute as @p[distance=0] run effect give @s blindness 1 0 true