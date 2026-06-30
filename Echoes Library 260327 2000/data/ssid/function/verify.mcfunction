$execute if score $ssid_verify_$(value) ssid matches $(value) run scoreboard players set @s ssid -1
$execute if score $ssid_verify_$(value) ssid matches $(value) run function ssid:assign

$execute unless score $ssid_verify_$(value) ssid matches $(value) run scoreboard players set $ssid_verify_$(value) ssid $(value)