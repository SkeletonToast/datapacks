$xp add @s[scores={xp_stored=1..}] $(value) points
tag @s[scores={xp_stored=..0,xp_stored_reserve=1..}] add xp_stored_reserve
scoreboard players remove @s[tag=xp_stored_reserve] xp_stored_reserve 1
scoreboard players add @s[tag=xp_stored_reserve] xp_stored 2000000000
tag @s remove xp_stored_reserve
$scoreboard players remove @s[scores={xp_stored=1..}] xp_stored $(value)