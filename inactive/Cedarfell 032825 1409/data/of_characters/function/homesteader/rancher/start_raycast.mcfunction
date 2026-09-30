$scoreboard players set @s rancher_mine_$(block) 0

scoreboard players set @s rancher_raycast_lifetime 0
execute store result score @s rancher_raycast_lifetime run attribute @s block_interaction_range get 10

$execute as @s at @s anchored eyes positioned ^ ^ ^ run function of_characters:homesteader/rancher/raycast {"block":"$(block)"}