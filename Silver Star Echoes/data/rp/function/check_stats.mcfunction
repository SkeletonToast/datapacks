execute as @a run function echoes:stats/echo_level
# execute if score @s EchoLevel matches ..-1 run scoreboard players operation @s EchoLevelsUnspent = @s EchoLevel
# function math:absolute_value {score:EchoLevelsUnspent}

tellraw @s [""]
tellraw @s [{"text":"❖ Level ","color":"gray"},{"score":{"name":"@s","objective":"EchoLevel"},"color":"white"}]
# tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"EchoLevelsUnspent"},"color":"white"},{"text":" unspent levels","color":"gray"}]
tellraw @s [{"text":"Stats listed as [Effective / Base]","color":"gray","italic":true}]
tellraw @s [""]

tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Strength"},"color":"red"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseStrength"},"color":"red"}, \
    {"text":" Strength","color":"red"},{"text":".","color":"gray"}]

tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Dexterity"},"color":"gold"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseDexterity"},"color":"gold"}, \
    {"text":" Dexterity","color":"gold"},{"text":".","color":"gray"}]

tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Resolve"},"color":"yellow"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseResolve"},"color":"yellow"}, \
    {"text":" Resolve","color":"yellow"},{"text":".","color":"gray"}]

tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Vitality"},"color":"green"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseVitality"},"color":"green"}, \
    {"text":" Vitality","color":"green"},{"text":".","color":"gray"}]

tellraw @s [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Tact"},"color":"aqua"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseTact"},"color":"aqua"}, \
    {"text":" Tact","color":"aqua"},{"text":".","color":"gray"}]

tellraw @s[scores={MindSigned=0..}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Mind"},"color":"blue"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseMind"},"color":"blue"}, \
    {"text":" Mind","color":"blue"},{"text":".","color":"gray"}]
tellraw @s[scores={MindSigned=..-1}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"MindSigned"},"color":"blue"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseMind"},"color":"dark_blue"}, \
    {"text":" Instinct","color":"dark_blue"},{"text":".","color":"gray"}]

tellraw @s[scores={SoulSigned=0..}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"Soul"},"color":"light_purple"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseSoul"},"color":"light_purple"}, \
    {"text":" Soul","color":"light_purple"},{"text":".","color":"gray"}]
tellraw @s[scores={SoulSigned=..-1}] [{"text":"❖ You have ","color":"gray"},{"score":{"name":"@s","objective":"SoulSigned"},"color":"dark_purple"}, \
    {"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"BaseSoul"},"color":"dark_purple"}, \
    {"text":" Fervor","color":"dark_purple"},{"text":".","color":"gray"}]

function rp:check_difficulty