tag @s add VariantMonster

scoreboard players operation @s generic_attribute = @r[distance=..100,scores={Renown=100..}] Renown
    scoreboard players remove @s generic_attribute 100

scoreboard players operation @s generic_b = @s generic_attribute
    scoreboard players operation @s generic_b /= @r 10
    scoreboard players set @s[scores={generic_b=100..}] generic_b 99
execute as @s[scores={generic_b=1..}] run function parse:score_unended \
    {"score":"generic_b","function":"echoes:monsters/spawn_max_health"}
execute as @s[scores={generic_b=1..}] run function parse:score_unended \
    {"score":"generic_b","function":"echoes:monsters/spawn_armor"}
execute as @s[scores={generic_b=1..}] run function parse:score_unended \
    {"score":"generic_b","function":"echoes:monsters/spawn_attack_damage"}
execute as @s[scores={generic_b=1..}] run function parse:score_unended \
    {"score":"generic_b","function":"echoes:monsters/spawn_scale"}