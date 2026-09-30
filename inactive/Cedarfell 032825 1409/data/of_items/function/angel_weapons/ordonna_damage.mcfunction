damage @n 2 oakfall:no_cooldown_magic by @s
# tag @n add StatusEligible
# scoreboard players add @n encumbered_timer 20

function of_items:angel_weapons/ordonna_hit
xp add @s 11 points
execute if entity @e[type=!#ss_lib:not_alive,distance=0.1..3] facing entity @n[type=!#ss_lib:not_alive,distance=0.1..3] eyes positioned ^ ^ ^0.25 run function ss_raycast:either {"particle":"particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a[distance=3..]","increment_distance":"0.25","max_lifetime":"20","run_on_block_success":"function of_items:angel_weapons/ordonna_hit","run_on_entity_success":"function of_items:angel_weapons/ordonna_damage"}