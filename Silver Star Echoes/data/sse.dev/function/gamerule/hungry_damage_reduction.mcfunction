# manually enable/disable
execute if entity @s[scores={hungryDamageReduction=0..}] store result storage gamerule_hungry_damage_reduction toggle int 1 run scoreboard players get @s hungryDamageReduction

# if toggled
execute if entity @s[scores={hungryDamageReduction=0..}] run return fail
execute store result score @s hungryDamageReduction run data get storage gamerule_hungry_damage_reduction toggle
scoreboard players add @s hungryDamageReduction 1
scoreboard players set @s[scores={hungryDamageReduction=2..}] hungryDamageReduction 0
execute store result storage gamerule_hungry_damage_reduction toggle int 1 run scoreboard players get @s hungryDamageReduction

# setting phantom player
execute store result score $sse.gamerule.hungry_damage_reduction true run data get storage gamerule_hungry_damage_reduction toggle