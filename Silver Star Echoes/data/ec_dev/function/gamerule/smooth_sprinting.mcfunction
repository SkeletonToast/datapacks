# manually enable/disable
execute if entity @s[scores={smoothSprinting=0..}] store result storage gamerule_smooth_sprinting toggle int 1 run scoreboard players get @s smoothSprinting

# if toggled
execute if entity @s[scores={smoothSprinting=0..}] run return fail
execute store result score @s smoothSprinting run data get storage gamerule_smooth_sprinting toggle
scoreboard players add @s smoothSprinting 1
scoreboard players set @s[scores={smoothSprinting=2..}] smoothSprinting 0
execute store result storage gamerule_smooth_sprinting toggle int 1 run scoreboard players get @s smoothSprinting

# setting phantom player
execute store result score $smoothSprinting true run data get storage gamerule_smooth_sprinting toggle