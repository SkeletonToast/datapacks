$scoreboard players set @s ssid $(ssid)
$function ssid:verify {"value":$(ssid)}
$execute unless score @s ssid matches -1 run tellraw @s "[Success] Your SSID has successfully set to $(ssid).\nSSID $(ssid) can no longer be used on this world."
execute if score @s ssid matches -1 run tellraw @s "[Error] This SSID is already in use, or has been reserved. Please choose another."