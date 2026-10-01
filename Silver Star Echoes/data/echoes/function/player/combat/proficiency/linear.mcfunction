execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Strength <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_str *= @s Strength
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Strength > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_str *= @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Dexterity <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_dex *= @s Dexterity
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Dexterity > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_dex *= @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Tact <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_tact *= @s Tact
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Tact > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_tact *= @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Soul <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_soul *= @s Soul
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Soul > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_soul *= @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Mind <= @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_mind *= @s Mind
execute as @s[scores={sse.difficulty.attribute_limit=0..}] if score @s Mind > @s sse.difficulty.attribute_limit run scoreboard players operation @s proficiency_mind *= @s sse.difficulty.attribute_limit

execute unless score @s sse.difficulty.attribute_limit matches 1.. run scoreboard players operation @s proficiency_str *= @s Strength
execute unless score @s sse.difficulty.attribute_limit matches 1.. run scoreboard players operation @s proficiency_dex *= @s Dexterity
execute unless score @s sse.difficulty.attribute_limit matches 1.. run scoreboard players operation @s proficiency_tact *= @s Tact
execute unless score @s sse.difficulty.attribute_limit matches 1.. run scoreboard players operation @s proficiency_soul *= @s Soul
execute unless score @s sse.difficulty.attribute_limit matches 1.. run scoreboard players operation @s proficiency_mind *= @s Mind