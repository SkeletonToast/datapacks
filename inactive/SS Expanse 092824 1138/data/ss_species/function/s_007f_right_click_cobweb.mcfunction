execute align y if block ~ ~ ~ #ss_library:nonsolidblocks if block ~ ~-1 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1 ~
execute align y unless block ~ ~-1 ~ #ss_library:nonsolidblocks if block ~ ~1 ~ #ss_library:nonsolidblocks if block ~ ~ ~ #ss_library:nonsolidblocks run tp @s ~ ~ ~

tag @s add HomarachRightClickRaytrace

scoreboard players set @s raycast_lifetime 60