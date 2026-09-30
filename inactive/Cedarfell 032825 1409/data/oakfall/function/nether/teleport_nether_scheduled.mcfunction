execute at @a[tag=UsingRift,scores={Dimension=1}] align xyz run fill ~2 ~1 ~1 ~-2 ~ ~-1 air replace #oakfall:nether_carveable
execute at @a[tag=UsingRift,scores={Dimension=1}] align xyz run fill ~1 ~1 ~2 ~-1 ~ ~-2 air replace #oakfall:nether_carveable
execute at @a[tag=UsingRift,scores={Dimension=1}] align xyz run fill ~1 ~2 ~1 ~-1 ~ ~-1 air replace #oakfall:nether_carveable
execute at @a[tag=UsingRift,scores={Dimension=1}] align xyz run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 netherrack replace #minecraft:air
execute at @a[tag=UsingRift,scores={Dimension=1}] run playsound block.portal.travel master @a ~ ~ ~ 0.5 1
execute at @a[tag=UsingRift,scores={Dimension=1}] run kill @e[type=minecraft:interaction,tag=NetherRift,distance=..10]
execute as @a[tag=UsingRift,scores={Dimension=1}] at @s anchored eyes positioned ^ ^ ^ align xz positioned ~0.5 ~ ~0.5 run function oakfall:nether/summon_rift
execute as @a[tag=UsingRift,scores={Dimension=1}] if block ~ ~ ~ #ss_lib:nonsolidblocks run tag @s remove UsingRift