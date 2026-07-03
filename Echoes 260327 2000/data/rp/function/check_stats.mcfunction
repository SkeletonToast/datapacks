execute as @a run function echoes:stats/echo_level

tellraw @s [""]
tellraw @s [{"text":"❖ Level ","color":"gray"},{"score":{"name":"@s","objective":"EchoLevel"},"color":"white"}]
tellraw @s [""]
tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Strength"},"color":"red"}, \
    {"text":" Strength","color":"red"},{"text":".","color":"gray"}]
tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Dexterity"},"color":"gold"}, \
    {"text":" Dexterity","color":"gold"},{"text":".","color":"gray"}]
tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Resolve"},"color":"yellow"}, \
    {"text":" Resolve","color":"yellow"},{"text":".","color":"gray"}]
tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Vitality"},"color":"green"}, \
    {"text":" Vitality","color":"green"},{"text":".","color":"gray"}]
tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Tact"},"color":"aqua"}, \
    {"text":" Tact","color":"aqua"},{"text":".","color":"gray"}]

tellraw @s[scores={MindSigned=0..}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"MindSigned"},"color":"blue"}, \
    {"text":" Mind","color":"blue"},{"text":".","color":"gray"}]
tellraw @s[scores={MindSigned=..-1}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Mind"},"color":"blue"}, \
    {"text":" Instinct","color":"dark_blue"},{"text":".","color":"gray"}]

tellraw @s[scores={SoulSigned=0..}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"SoulSigned"},"color":"light_purple"}, \
    {"text":" Soul","color":"light_purple"},{"text":".","color":"gray"}]
tellraw @s[scores={SoulSigned=..-1}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Soul"},"color":"dark_purple"}, \
    {"text":" Fervor","color":"dark_purple"},{"text":".","color":"gray"}]
    
tellraw @s[scores={EchoDifficulty=1..}] [""]
tellraw @s[scores={EchoDifficulty=1}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Homesteader","color":"blue"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=2}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Pilgrim","color":"green"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=3}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Retainer","color":"yellow"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=4}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Vestige","color":"gold"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=5}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Aspirant","color":"red"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=6}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Lord","color":"dark_red"},{"text":" difficulty.","color":"gray"}]
tellraw @s[scores={EchoDifficulty=7}] [{"text":"⚔ You are on ","color":"gray"},{"text":"Monarch","color":"light_purple"},{"text":" difficulty.","color":"gray"}]