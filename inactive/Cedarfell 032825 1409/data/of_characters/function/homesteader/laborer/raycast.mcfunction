scoreboard players add @s raycast_lifetime 10

$execute positioned ~ ~ ~ run function of_characters:homesteader/laborer/mine_$(block)

$execute unless score @s raycast_lifetime >= @s laborer_raycast_lifetime positioned ^ ^ ^1 run function of_characters:homesteader/laborer/raycast {"block":"$(block)"}
execute if score @s raycast_lifetime >= @s laborer_raycast_lifetime run scoreboard players set @s raycast_lifetime 0