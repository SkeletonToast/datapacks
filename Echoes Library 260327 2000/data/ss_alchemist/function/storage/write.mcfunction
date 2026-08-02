$execute store result score @s generic_a run data get storage ss_alchemist:$(ssid) status.$(status).$(value).amplifier
$scoreboard players set @s generic_b $(amplifier)

execute if score @s generic_a <= @s generic_b