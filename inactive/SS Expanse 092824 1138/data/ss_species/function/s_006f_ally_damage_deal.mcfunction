$damage @s $(damage) player_attack
$scoreboard players remove @s species006-04 $(score)
execute at @s positioned ~ ~0.7 ~ run function ss_particles:spark_burst
tag @s add FeldspariAllyDamageTaken