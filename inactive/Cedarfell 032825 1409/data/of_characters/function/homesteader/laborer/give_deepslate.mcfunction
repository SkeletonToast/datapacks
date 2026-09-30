$execute if predicate {"condition":"minecraft:random_chance","chance":0.25} run give @s $(block)
scoreboard players remove @s laborer_mine_deepslate 1
$execute as @s[scores={laborer_mine_deepslate=1..}] run function of_characters:homesteader/laborer/give_deepslate {"block":"$(block)"}