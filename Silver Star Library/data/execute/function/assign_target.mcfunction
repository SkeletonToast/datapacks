scoreboard players set @a[scores={DamageDealt=1..}] execute.target 0
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @s execute.target = @n[distance=0] ssid
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @n[distance=0] execute.attacker = @s ssid
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players set @s execute.targeting_timer 100
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players set @n[distance=0] execute.targeted_timer 100

scoreboard players remove @a[scores={execute.targeting_timer=1..}] execute.targeting_timer 1
scoreboard players remove @a[scores={execute.targeted_timer=1..}] execute.targeted_timer 1
scoreboard players set @a[scores={execute.targeting_timer=0}] execute.target 0

execute at @a[scores={DamageDealt=1..,execute.targeting_timer=1..,execute.target=0}] as @a[scores={DamageTaken=1..}] if score @s execute.attacker = @n[distance=0] ssid run return fail
execute as @a[scores={DamageDealt=1..,execute.targeting_timer=1..,execute.target=0}] at @s run function parse:score_unended {score:ssid,function:"execute:internal/on/nonplayer/initiate_targeting"}
    # once you find an entity that has you as an attacker, but does NOT have an attacker score that matches yours, terminate