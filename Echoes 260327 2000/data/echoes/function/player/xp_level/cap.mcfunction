$xp add @s -$(value) points
# scoreboard players operation @s generic_m = @s xp_cap
#     scoreboard players operation @s generic_m *= @s 10
#     scoreboard players operation @s generic_m *= @s 10
#     scoreboard players operation @s generic_m *= @s 10
$scoreboard players add @s[scores={xp_stored=..2000000000}] xp_stored $(value)