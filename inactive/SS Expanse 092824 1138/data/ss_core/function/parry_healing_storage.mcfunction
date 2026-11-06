scoreboard players operation @s ParryDamageTaken = @s DamageTaken
$execute as @s[scores={ParryDamageTaken=34..}] store result storage $(UUID):parry Duration int 0.03 run scoreboard players get @s ParryDamageTaken
$execute as @s[scores={ParryDamageTaken=34..}] run data modify storage $(UUID):parry Amplifier set value 3
$execute as @s[scores={ParryDamageTaken=34..}] run function ss_core:parry_healing with storage $(UUID):parry
$execute as @s[scores={ParryDamageTaken=..33}] run data modify storage $(UUID):parry Duration set value 1
$execute as @s[scores={ParryDamageTaken=..17}] run data modify storage $(UUID):parry Amplifier set value 2
$execute as @s[scores={ParryDamageTaken=..8}] run data modify storage $(UUID):parry Amplifier set value 1
$execute as @s[scores={ParryDamageTaken=..4}] run data modify storage $(UUID):parry Amplifier set value 0
$execute as @s[scores={ParryDamageTaken=..33}] run function ss_core:parry_healing with storage $(UUID):parry