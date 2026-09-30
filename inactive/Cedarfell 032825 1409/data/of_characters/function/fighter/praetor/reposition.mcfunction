execute at @n[type=!#ss_lib:not_alive] anchored feet rotated ~90 0 positioned ^-2 ^ ^ unless block ~ ~0.1 ~ #ss_lib:nonsolidblocks at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 1
execute at @n[type=!#ss_lib:not_alive] anchored feet rotated ~90 0 positioned ^-2 ^ ^ unless block ~ ~0.1 ~ #ss_lib:nonsolidblocks run return fail
$execute as @n[type=!#ss_lib:not_alive] if entity @s[type=player,nbt={UUID:$(UUID)}] run return fail

execute at @s anchored eyes run particle gust ^ ^ ^ 0.3 0.5 0.3 0 1
execute at @s run particle small_gust ~ ~1 ~ 0.3 0.5 0.3 0 10
execute at @s anchored eyes run playsound entity.breeze.charge player @a ^ ^ ^ 2 1.4

attribute @s gravity modifier add praetor_reposition_gravity -2.5 add_multiplied_total

execute at @n[type=!#ss_lib:not_alive] anchored feet rotated ~90 0 positioned ^-2 ^ ^ rotated ~-90 ~ facing entity @n[type=!#ss_lib:not_alive] feet rotated ~ ~ run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~ ~
execute at @s anchored eyes run particle gust ^ ^ ^ 0.3 0.5 0.3 0 1
execute at @s run particle small_gust ~ ~1 ~ 0.3 0.5 0.3 0 10
execute at @s anchored eyes run playsound entity.breeze.charge player @a ^ ^ ^ 2 1.4

particle flash ^ ^ ^1 0 0 0 0 1 normal @s