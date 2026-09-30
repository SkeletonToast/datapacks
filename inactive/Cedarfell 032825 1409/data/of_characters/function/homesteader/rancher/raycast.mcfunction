scoreboard players add @s raycast_lifetime 5

$execute if block ~ ~1 ~ $(block)[axis=y] unless block ~ ~-1 ~ $(block)[axis=y] run scoreboard players operation @s raycast_lifetime = @s rancher_raycast_lifetime
$execute if block ~ ~1 ~ $(block)[axis=y] unless block ~ ~-1 ~ $(block)[axis=y] run scoreboard players set @s rancher_raycast_lifetime 10
$execute positioned ~ ~1 ~ if block ~ ~ ~ $(block)[axis=y] unless block ~ ~-2 ~ $(block)[axis=y] run function of_characters:homesteader/rancher/raycast_fell {"block":"$(block)"}

$execute unless score @s raycast_lifetime >= @s rancher_raycast_lifetime positioned ^ ^ ^0.5 run function of_characters:homesteader/rancher/raycast {"block":"$(block)"}
execute if score @s raycast_lifetime >= @s rancher_raycast_lifetime run scoreboard players set @s raycast_lifetime 0