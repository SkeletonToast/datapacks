# manually enable/disable
execute if entity @s[scores={generic_g=0..}] store result storage gamerule_ambient_particles toggle int 1 run scoreboard players get @s generic_g

# if toggled
execute if entity @s[scores={generic_g=0..}] run return fail
execute store result score @s generic_g run data get storage gamerule_ambient_particles toggle
scoreboard players add @s generic_g 1
scoreboard players set @s[scores={generic_g=2..}] generic_g 0
execute store result storage gamerule_ambient_particles toggle int 1 run scoreboard players get @s generic_g

# setting phantom player
execute store result score $sse.gamerule.ambient_particles true run data get storage gamerule_ambient_particles toggle