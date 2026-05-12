execute at @s as @e[type=#ss_lib:hostile,distance=..10] on target if entity @s[tag=InCombat,distance=0] run return fail
scoreboard players set @s in_combat 0
function echoes:player/combat/exit_message