# manually enable/disable
$execute store result storage $(source):gamerule $(gamerule) int 1 run scoreboard players get @s $(source).gamerule.$(gamerule)

# setting phantom player
$execute store result score $$(source).gamerule.$(gamerule) value run data get storage $(source):gamerule $(gamerule)