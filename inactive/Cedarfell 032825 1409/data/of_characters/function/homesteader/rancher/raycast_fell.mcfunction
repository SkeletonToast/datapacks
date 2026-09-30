$execute unless block ~ ~ ~ $(block)[axis=y] run scoreboard players set @s rancher_raycast_lifetime 0
$execute if block ~ ~ ~ $(block)[axis=y] positioned ~ ~1 ~ run function of_characters:homesteader/rancher/raycast_fell {"block":"$(block)"}
$execute if block ~ ~ ~ $(block)[axis=y] run fill ~ ~ ~ ~ ~ ~ air destroy