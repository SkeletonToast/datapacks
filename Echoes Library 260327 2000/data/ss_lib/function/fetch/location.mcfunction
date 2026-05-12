$execute as $(s) at @s if dimension minecraft:overworld run scoreboard players set @s Dimension 1
$execute as $(s) at @s if dimension minecraft:the_nether run scoreboard players set @s Dimension 2
$execute as $(s) at @s if dimension minecraft:the_end run scoreboard players set @s Dimension 3

$execute as $(s) store result score @s xcoord run data get entity @s Pos[0]
$execute as $(s) store result score @s ycoord run data get entity @s Pos[1]
$execute as $(s) store result score @s zcoord run data get entity @s Pos[2]