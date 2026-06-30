execute unless entity @s[scores={run_recursions=1..}] run scoreboard players set @s run_recursions 0
$function ssid:reserve {"player":"$ssid_verify_$(r)","ssid":$(r)}
scoreboard players add @s run_recursions 1
$execute unless entity @s[scores={run_recursions=$(r)..}] run function ssid:auto_reserve {"r":"$(r)"}
$execute as @s[scores={run_recursions=$(r)..}] run scoreboard players set @s run_recursions -1