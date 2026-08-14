$execute as @s[scores={fragile_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#948025","status":"Fragile",append:" ($(multiplier)x)"}

$attribute @s minecraft:armor modifier add fragile_armor -$(multiplier) add_multiplied_total
$attribute @s minecraft:armor_toughness modifier add fragile_armor_toughness -$(multiplier) add_multiplied_total

scoreboard players set @s fragile_active 1