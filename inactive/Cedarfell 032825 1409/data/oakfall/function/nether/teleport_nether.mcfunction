execute at @a as @e[type=minecraft:interaction,tag=NetherRift] at @s if data entity @s interaction run data remove entity @s interaction
scoreboard players set @e[type=minecraft:interaction,tag=NetherRift] of_rift_cooldown 60

execute at @s anchored eyes positioned ^ ^ ^ run function oakfall:nether/using_rift_particles
execute align xyz in minecraft:the_nether run tp @s ~0.5 64 ~0.5
tag @s add UsingRift
effect give @s resistance 5 4 true
schedule function oakfall:nether/teleport_nether_scheduled 5t