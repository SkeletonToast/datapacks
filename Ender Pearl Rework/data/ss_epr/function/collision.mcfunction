execute store result score @s ss_epr.scale run attribute @s scale get

execute store result score @s ss_epr.x run data get entity @s Pos[0] 100
execute store result score @s ss_epr.z run data get entity @s Pos[2] 100
scoreboard players operation @s ss_epr.x %= #const.100 value
scoreboard players operation @s ss_epr.z %= #const.100 value

execute unless score @s ss_epr.x matches 31.. align x positioned ~0.31 ~ ~ if block ~ ~ ~ #ss_epr:nonsolidblocks run tp @s ~ ~ ~
execute unless score @s ss_epr.x matches ..69 align x positioned ~-0.31 ~ ~ if block ~ ~ ~ #ss_epr:nonsolidblocks run tp @s ~ ~ ~
execute unless score @s ss_epr.z matches 31.. align z positioned ~ ~ ~0.31 if block ~ ~ ~ #ss_epr:nonsolidblocks run tp @s ~ ~ ~
execute unless score @s ss_epr.z matches ..69 align z positioned ~ ~ ~-0.31 if block ~ ~ ~ #ss_epr:nonsolidblocks run tp @s ~ ~ ~