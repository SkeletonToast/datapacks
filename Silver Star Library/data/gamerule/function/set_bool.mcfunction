# manually enable/disable
$execute if entity @s[scores={$(source).gamerule.$(gamerule)=0..}] store result storage $(source):gamerule $(gamerule) int 1 run scoreboard players get @s $(source).gamerule.$(gamerule)

# if toggled
$execute if entity @s[scores={$(source).gamerule.$(gamerule)=0..}] run return fail
$execute store result score @s $(source).gamerule.$(gamerule) run data get storage $(source):gamerule $(gamerule)
$scoreboard players add @s $(source).gamerule.$(gamerule) 1
$scoreboard players set @s[scores={$(source).gamerule.$(gamerule)=2..}] $(source).gamerule.$(gamerule) 0
$execute store result storage $(source):gamerule $(gamerule) int 1 run scoreboard players get @s $(source).gamerule.$(gamerule)

# setting phantom player
$execute store result score $$(source).gamerule.$(gamerule) true run data get storage $(source):gamerule $(gamerule)