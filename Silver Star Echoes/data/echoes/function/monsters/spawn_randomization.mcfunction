tag @s add VariantMonster

scoreboard players operation @s generic_attribute = @r[distance=..100,scores={Renown=100..}] Renown
    scoreboard players remove @s generic_attribute 100

scoreboard players operation @s generic_a = @s generic_attribute
    function math:divide/int {score:generic_a,div:10}
    scoreboard players set @s[scores={generic_a=100..}] generic_a 99
execute as @s[scores={generic_a=1..}] run function parse:simple \
    {score:generic_a,function:"echoes:monsters/spawn_max_health"}
execute as @s[scores={generic_a=1..}] run function parse:simple \
    {score:generic_a,function:"echoes:monsters/spawn_armor"}
execute as @s[scores={generic_a=1..}] run function parse:simple \
    {score:generic_a,function:"echoes:monsters/spawn_attack_damage"}
execute as @s[scores={generic_a=1..}] run function parse:simple \
    {score:generic_a,function:"echoes:monsters/spawn_scale"}