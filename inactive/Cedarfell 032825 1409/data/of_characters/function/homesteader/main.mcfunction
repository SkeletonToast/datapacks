attribute @s block_interaction_range modifier add homesteader_block_interaction_range 1 add_value

# functions
execute as @s[scores={rancher=1}] run function of_characters:homesteader/rancher/main
execute as @s[scores={laborer=1}] run function of_characters:homesteader/laborer/main
execute as @s[scores={scholar=1}] run function of_characters:homesteader/scholar/main