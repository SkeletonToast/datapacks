$execute if score $ssid_verify_$(ssid) ssid matches 528 run return fail
$execute if score $ssid_verify_$(ssid) ssid matches 183 run return fail

$scoreboard players set @e[scores={ssid=$(ssid)}] ssid -1
$scoreboard players set $ssid_verify_$(ssid) ssid -1