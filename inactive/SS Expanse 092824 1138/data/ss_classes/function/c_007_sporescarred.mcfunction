execute as @e[tag=MyconidNode] at @s if entity @a[distance=..1] run function ss_species:s_009f_myconidnetwork
execute as @e[tag=MyconidNode] at @s unless block ~ ~-0.4 ~ #ss_library:nonsolidblocks run tp @s ~ ~0.1 ~
execute as @e[tag=MyconidNode] at @s if block ~ ~-0.4 ~ #ss_library:nonsolidblocks run tp @s ~ ~-0.1 ~
execute at @a[scores={class007=1..}] at @n[distance=..3,tag=MyconidNode] positioned ~ ~-0.5 ~ run function ss_particles:composter_ring