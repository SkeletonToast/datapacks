execute at @s as @e[type=enderman,distance=..200] run data modify entity @s AngryAt set from entity @r UUID
execute at @s at @e[type=end_crystal,distance=..200] run function ss_species:s_012f_summon_dracochild
execute at @a[scores={Dimension=2}] at @e[type=enderman,distance=..30] run function ss_species:s_012f_summon_dracoknight