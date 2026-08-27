# scoreboard players operation @s proficiency_str *= @s 10
# scoreboard players operation @s proficiency_dex *= @s 10
# scoreboard players operation @s proficiency_tact *= @s 10
# scoreboard players operation @s proficiency_soul *= @s 10

execute if score @s Strength <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_str *= @s Strength
execute if score @s Strength > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_str *= @s sse.difficulty.attribute_limit
execute if score @s Dexterity <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_dex *= @s Dexterity
execute if score @s Dexterity > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_dex *= @s sse.difficulty.attribute_limit
execute if score @s Tact <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_tact *= @s Tact
execute if score @s Tact > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_tact *= @s sse.difficulty.attribute_limit
execute if score @s Soul <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_soul *= @s Soul
execute if score @s Soul > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_soul *= @s sse.difficulty.attribute_limit
execute if score @s Mind <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_mind *= @s Mind
execute if score @s Mind > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_mind *= @s sse.difficulty.attribute_limit