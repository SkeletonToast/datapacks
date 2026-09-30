execute if predicate {"condition":"minecraft:random_chance","chance":0.25} run give @s tuff
scoreboard players remove @s laborer_mine_tuff 1
execute as @s[scores={laborer_mine_tuff=1..}] run function of_characters:homesteader/laborer/give_tuff