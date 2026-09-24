scoreboard objectives add switch_character trigger
scoreboard objectives add character.age dummy
scoreboard objectives add character.birthday dummy
scoreboard objectives add character.height dummy
scoreboard objectives add character.gender dummy
    # 1 - female
    # 2 - male
    # 3 - other

execute as @a run scoreboard players operation @s generic_a = $homesteader.gamerule.character_limit value
execute as @a run function parse:score_unended {function:"homesteader:characters/create_character_scores",score:generic_a}