$execute as @s[scores={frightened_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#524bb1","status":"Frightened",append:" ($(multiplier)x)"}

scoreboard players set @s unnerved_active 1

$function ss_statuses:unnerved {"multiplier":"$(multiplier)"}
$attribute @s minecraft:armor modifier add frightened_armor -$(multiplier) add_multiplied_total
effect give @s minecraft:hunger 1 0 true

scoreboard players set @s frightened_active 1