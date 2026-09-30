# macros: namespace, gamerule

# manually enable/disable
$execute if entity @s[scores={$(namespace).gamerule.$(gamerule)=0..}] store result storage $(namespace):gamerules $(gamerule) int 1 run scoreboard players get @s $(namespace).gamerule.$(gamerule)

# if toggled
$execute if entity @s[scores={$(namespace).gamerule.$(gamerule)=0..}] run return fail
$execute store result score @s $(namespace).gamerule.$(gamerule) run data get storage $(namespace):gamerules $(gamerule)
$scoreboard players add @s $(namespace).gamerule.$(gamerule) 1
$scoreboard players set @s[scores={$(namespace).gamerule.$(gamerule)=2..}] $(namespace).gamerule.$(gamerule) 0
$execute store result storage $(namespace):gamerules $(gamerule) int 1 run scoreboard players get @s $(namespace).gamerule.$(gamerule)

# setting phantom player
$execute store result score $$(namespace).gamerule.$(gamerule) true run data get storage $(namespace):gamerules $(gamerule)