function ss_species:s_007f_summon_tiny_spider
execute at @e[type=spider,tag=tinyspider] run function ss_species:s_007f_summon_tiny_spider

execute as @e[tag=tinyspider] unless entity @s[scores={Age=1..}] run scoreboard players set @s Age -1200

execute as @e[tag=tinyspider] run scoreboard players add @a[tag=tinyspider] Age 1