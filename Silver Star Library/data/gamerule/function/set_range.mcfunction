# manually enable/disable
$execute if entity @s[scores={$(namespace).gamerule.$(gamerule)=$(lower_limit)..}] store result storage $(namespace):gamerule $(gamerule) int 1 run scoreboard players get @s $(namespace).gamerule.$(gamerule)

# setting phantom player
$execute store result score $$(namespace).gamerule.$(gamerule) value run data get storage $(namespace):gamerule $(gamerule)