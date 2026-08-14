$execute as @s[scores={unnerved_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#4b91b1","status":"Unnerved",append:" ($(multiplier)x)"}

$attribute @s minecraft:movement_speed modifier add unnerved_movement_speed -$(multiplier) add_multiplied_total
$attribute @s minecraft:attack_speed modifier add unnerved_attack_speed -$(multiplier) add_multiplied_total
$attribute @s minecraft:block_break_speed modifier add unnerved_block_break_speed -$(multiplier) add_multiplied_total

execute as @s[scores={Food=20}] unless score @s Health >= @s BaseMaxHealth run effect give @s hunger 1 19 true

scoreboard players set @s unnerved_active 1