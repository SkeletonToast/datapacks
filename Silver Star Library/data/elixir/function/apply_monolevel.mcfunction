function ssid:assign

$tag @s add $(source).$(status).active

$scoreboard players set @s generic_d $(duration)
$execute unless score @s generic_d < @s $(source).$(status).duration run scoreboard players operation @s $(source).$(status).duration = @s generic_d