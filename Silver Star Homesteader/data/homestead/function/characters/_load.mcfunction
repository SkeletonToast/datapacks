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

# function parse:phantom/simple {target:"$homestead.gamerule.character_limit",score:value,function:"homestead:characters/create_character_scores"}
    # i don't even need to do this. just store the relevant info in ssid storage when you switch. way easier and then you don't have to create a billion scores