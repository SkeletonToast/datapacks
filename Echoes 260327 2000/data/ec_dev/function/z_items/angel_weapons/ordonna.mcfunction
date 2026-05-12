stopsound @s
playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^0.5 0.1 0.1
playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 0.5 0.1
playsound minecraft:entity.wither.spawn player @a ^ ^ ^0.5 0.5 1.2
playsound minecraft:ambient.cave player @a ^ ^ ^0.5 1 1

execute positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either {"particle":"particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a[distance=3..]","increment_distance":"0.25","max_lifetime":"400","run_on_block_success":"function of_items:angel_weapons/ordonna_hit","run_on_entity_success":"function of_items:angel_weapons/ordonna_damage"}

execute positioned ^ ^ ^0.5 run particle flash ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 5 normal @a[distance=3..]
execute positioned ^ ^ ^0.5 run particle electric_spark ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 5 normal @a[distance=3..]

# execute as @s[scores={artifact_type=5}] run function of_items:angel_weapons/lycastr_item {"format":"item replace entity @s weapon.mainhand with"}
# execute as @s[scores={artifact_type=-5}] run function of_items:angel_weapons/lycastr_item {"format":"item replace entity @s weapon.offhand with"}