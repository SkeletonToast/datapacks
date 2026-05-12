# manually enable/disable
execute if entity @s[scores={timeDilation=0..}] store result storage gamerule_time_dilation toggle int 1 run scoreboard players get @s timeDilation

# if toggled
execute if entity @s[scores={timeDilation=0..}] run return fail
execute store result score @s timeDilation run data get storage gamerule_time_dilation toggle
scoreboard players add @s timeDilation 1
scoreboard players set @s[scores={timeDilation=2..}] timeDilation 0
execute store result storage gamerule_time_dilation toggle int 1 run scoreboard players get @s timeDilation

# setting phantom player
execute store result score $timeDilation true run data get storage gamerule_time_dilation toggle