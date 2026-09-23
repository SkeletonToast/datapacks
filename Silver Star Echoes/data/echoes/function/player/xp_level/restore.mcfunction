execute as @s[tag=xp_stall_prevention] run function parse:score_unended {score:xp_cap,function:"echoes:player/xp_level/set"}
execute as @s[tag=xp_stall_prevention] run scoreboard players operation @s xp_level = @s xp_cap
execute as @s[tag=xp_stall_prevention] run return fail

$xp add @s[scores={xp_stored=1..}] $(value) points
tag @s[scores={xp_stored=..0,xp_stored_reserve=1..}] add xp_stored_reserve
scoreboard players remove @s[tag=xp_stored_reserve] xp_stored_reserve 1
scoreboard players add @s[tag=xp_stored_reserve] xp_stored 2000000000
tag @s remove xp_stored_reserve
$scoreboard players remove @s[scores={xp_stored=1..}] xp_stored $(value)

# scoreboard players operation @s xp_increment /= @s 2
#     scoreboard players operation @s xp_increment /= @s 2
# scoreboard players operation @s xp_increment *= @s 3

execute at @s anchored eyes run particle enchant ^ ^ ^ 0.3 0.3 0.3 0 2 normal @a