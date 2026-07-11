scoreboard players add @s raycast_lifetime 1

particle minecraft:reverse_portal ~ ~ ~
particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0 1 normal

execute unless block ~ ~ ~ #ss_epr:nonsolidblocks run scoreboard players operation @s raycast_lifetime = @s ss_epr.teleport_distance

execute unless score @s raycast_lifetime = @s ss_epr.teleport_distance positioned ^ ^ ^0.5 run function ss_epr:raycast
execute if score @s raycast_lifetime = @s ss_epr.teleport_distance run function ss_epr:teleport
execute if score @s raycast_lifetime = @s ss_epr.teleport_distance run scoreboard players set @s raycast_lifetime 0