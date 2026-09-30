scoreboard players set @s laborer_raycast_lifetime 0
execute store result score @s laborer_raycast_lifetime run attribute @s block_interaction_range get 5
execute store result score @s laborer_raycast_rotation run data get entity @s Rotation[1]
    scoreboard players operation @s[scores={laborer_raycast_rotation=..-1}] laborer_raycast_rotation *= @s -1

$execute as @s[scores={laborer_raycast_rotation=10..}] at @s anchored eyes positioned ^ ^ ^ run function of_characters:homesteader/laborer/raycast {"block":"$(block)"}
$execute as @s[scores={laborer_raycast_rotation=..9}] at @s anchored eyes positioned ^ ^ ^ rotated ~ 0 run function of_characters:homesteader/laborer/raycast {"block":"$(block)"}