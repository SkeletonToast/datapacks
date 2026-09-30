scoreboard players add @s of_campfire_spawn 0

execute at @s run spawnpoint @s ~ ~ ~ ~
execute if block ~ ~ ~ campfire run tellraw @s [{"color":"gray","text":"+"},{"color":"gold","text":"Your spawn has been set."}]
execute if block ~ ~ ~ soul_campfire run tellraw @s [{"color":"gray","text":"+"},{"color":"aqua","text":"Your spawn has been set."}]

# execute if block ~ ~ ~ campfire run tellraw @s [{"color":"gray","text":"+"},{"color":"gold","text":"Next time you respawn, it will be at this campfire."}]
# execute if block ~ ~ ~ soul_campfire run tellraw @s [{"color":"gray","text":"+"},{"color":"aqua","text":"Next time you respawn, it will be at this campfire."}]

# execute as @n[type=interaction,tag=Campfire] store result score @s of_campfire_spawn_x run data get entity @s Pos[0]
# execute as @n[type=interaction,tag=Campfire] store result score @s of_campfire_spawn_y run data get entity @s Pos[1]
# execute as @n[type=interaction,tag=Campfire] store result score @s of_campfire_spawn_z run data get entity @s Pos[2]
# scoreboard players operation @s of_campfire_spawn_x = @n[type=interaction,tag=Campfire] of_campfire_spawn_x
# scoreboard players operation @s of_campfire_spawn_y = @n[type=interaction,tag=Campfire] of_campfire_spawn_y
# scoreboard players operation @s of_campfire_spawn_z = @n[type=interaction,tag=Campfire] of_campfire_spawn_z

# scoreboard players set @s of_campfire_spawn 1