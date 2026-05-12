# manually enable/disable
execute if entity @s[scores={ambientParticles=0..}] store result storage gamerule_ambient_particles toggle int 1 run scoreboard players get @s ambientParticles

# if toggled
execute if entity @s[scores={ambientParticles=0..}] run return fail
execute store result score @s ambientParticles run data get storage gamerule_ambient_particles toggle
scoreboard players add @s ambientParticles 1
scoreboard players set @s[scores={ambientParticles=2..}] ambientParticles 0
execute store result storage gamerule_ambient_particles toggle int 1 run scoreboard players get @s ambientParticles

# setting phantom player
execute store result score $ambientParticles true run data get storage gamerule_ambient_particles toggle