scoreboard objectives add switch_character trigger
scoreboard objectives add character.current dummy
scoreboard objectives add character.age dummy
scoreboard objectives add character.height dummy

scoreboard objectives add character.birthday.day dummy
scoreboard objectives add character.birthday.month dummy
    # 183 - 338 days (6/2)

scoreboard objectives add character.gender dummy
    # 1 - female
    # 2 - male
    # 3 - other

execute as @a run scoreboard players operation @s generic_a = $homestead.gamerule.character_limit value
execute as @a run function parse:simple {function:"homestead:characters/create_character_scores",score:generic_a}