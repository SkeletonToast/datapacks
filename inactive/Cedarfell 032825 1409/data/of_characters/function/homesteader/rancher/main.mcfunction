# husbandry
execute at @s[advancements={of_characters:rancher/bred_animals=true}] as @e[distance=..10,type=#ss_lib:passive] run data merge entity @s {Age:0}

# armor proficiency
    scoreboard players add @s[scores={ArmorType=1..6}] armor_proficiency 20

execute as @s[scores={Food=..19}] if score @s Health >= @s BaseMaxHealth run effect give @s saturation 1 0 true
execute if score @s Health >= @s BaseMaxHealth run effect clear @s hunger
# THE INDENTED CODE IS TEMPORARY WHILE RANCHERS ARE UNDERFEATURED.
# it will be deleted when Ranchers are in a better state.
    execute as @s[scores={Food=..18}] if score @s Health >= @s BaseMaxHealth run effect give @s saturation 1 0 true
    execute as @s[scores={Food=20}] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}
    effect clear @s hunger

execute as @s[scores={OnGround=1,rancher_walk=1..},predicate=of_characters:rancher_holding_seeds] at @s if block ~ ~-0.5 ~ farmland positioned ~ ~0.5 ~ if block ~ ~ ~ #minecraft:air run function of_characters:homesteader/rancher/replant
execute as @s[scores={OnGround=1,rancher_walk=1..},predicate=of_characters:rancher_holding_bone_meal] at @s if block ~ ~-0.5 ~ farmland positioned ~ ~0.5 ~ if block ~ ~ ~ #minecraft:air run function of_characters:homesteader/rancher/fertilize

scoreboard players set @s rancher_walk 0

# add lumberjacking
execute as @s[scores={rancher_mine_oak_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"oak_log"}
execute as @s[scores={rancher_mine_acacia_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"acacia_log"}
execute as @s[scores={rancher_mine_birch_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"birch_log"}
execute as @s[scores={rancher_mine_cherry_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"cherry_log"}
execute as @s[scores={rancher_mine_jungle_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"jungle_log"}
execute as @s[scores={rancher_mine_spruce_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"spruce_log"}
execute as @s[scores={rancher_mine_dark_oak_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"dark_oak_log"}
execute as @s[scores={rancher_mine_mangrove_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"mangrove_log"}
execute as @s[scores={rancher_mine_pale_oak_log=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"pale_oak_log"}
execute as @s[scores={rancher_mine_warped_hyphae=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"warped_hyphae"}
execute as @s[scores={rancher_mine_crimson_stem=1..,SneakTime=0}] run function of_characters:homesteader/rancher/start_raycast {"block":"crimson_stem"}