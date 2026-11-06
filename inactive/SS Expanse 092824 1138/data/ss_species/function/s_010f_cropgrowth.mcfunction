# if bone meal in offhand, will accelerate growth to maximum and use one bone meal
#   for saplings, will accelerate growth of all saplings of that type in a 3x3 square, so that it catches big trees too

execute if block ~ ~1 ~ beetroots unless block ~ ~1 ~ beetroots[age=3] run function ss_species:s_010f_cropgrowth_crop {"block_age":"beetroots[age=3]"}
execute if block ~ ~1 ~ carrots unless block ~ ~1 ~ carrots[age=7] run function ss_species:s_010f_cropgrowth_crop {"block_age":"carrots[age=7]"}
execute if block ~ ~1 ~ potatoes unless block ~ ~1 ~ potatoes[age=7] run function ss_species:s_010f_cropgrowth_crop {"block_age":"potatoes[age=7]"}
execute if block ~ ~1 ~ wheat unless block ~ ~1 ~ wheat[age=7] run function ss_species:s_010f_cropgrowth_crop {"block_age":"wheat[age=7]"}
execute if block ~ ~1 ~ melon_stem unless block ~ ~1 ~ melon_stem[age=7] run function ss_species:s_010f_cropgrowth_crop {"block_age":"melon_stem[age=7]"}
execute if block ~ ~1 ~ pumpkin_stem unless block ~ ~1 ~ pumpkin_stem[age=7] run function ss_species:s_010f_cropgrowth_crop {"block_age":"pumpkin_stem[age=7]"}

execute if block ~ ~ ~ oak_sapling unless block ~ ~ ~ oak_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling {"block":"oak_sapling"}
execute if block ~ ~ ~ birch_sapling unless block ~ ~ ~ birch_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling {"block":"oak_sapling"}
execute if block ~ ~ ~ acacia_sapling unless block ~ ~ ~ acacia_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling {"block":"oak_sapling"}
execute if block ~ ~ ~ cherry_sapling unless block ~ ~ ~ cherry_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling {"block":"oak_sapling"}
execute if block ~ ~ ~ mangrove_propagule unless block ~ ~ ~ mangrove_propagule[stage=1] run function ss_species:s_010f_cropgrowth_sapling {"block":"oak_sapling"}

execute if block ~ ~ ~ spruce_sapling unless block ~ ~ ~ spruce_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling_big {"block":"spruce_sapling"}
execute if block ~ ~ ~ jungle_sapling unless block ~ ~ ~ jungle_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling_big {"block":"jungle_sapling"}
execute if block ~ ~ ~ dark_oak_sapling unless block ~ ~ ~ dark_oak_sapling[stage=1] run function ss_species:s_010f_cropgrowth_sapling_big {"block":"dark_oak_sapling"}

# as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal"}]}]