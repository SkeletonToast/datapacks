execute as @e[type=minecraft:interaction,tag=NetherRift] at @s if data entity @s interaction run data remove entity @s interaction
scoreboard players set @e[type=minecraft:interaction,tag=NetherRift] of_rift_cooldown 60

tag @s add UsingRift
execute in oakfall:oakfall run tp @s ~ ~ ~
schedule function oakfall:nether/teleport_overworld_scheduled 5t