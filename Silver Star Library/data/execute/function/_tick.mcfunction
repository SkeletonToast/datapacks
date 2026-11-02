function gamerule:custom/tick_range {source:execute,gamerule:positioned_range,lower_limit:1,upper_limit:1000}

execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @s execute.target = @n[distance=0] ssid
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @n[distance=0] execute.attacker = @s ssid
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players set @s execute.targeting_timer 100
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players set @n[distance=0] execute.targeted_timer 100
    # maybe i need a different score that tracks how recently players were attacked, that way it could be compared to other players to see who has the most recent thing
    # actually, just have different "on" functions: target, targets, and nearest_target. target is the most recently attacked, targets is all who have the executor as their attacker, and nearest_target is the physically closest target.

scoreboard players remove @a[scores={execute.targeting_timer=1..}] execute.targeting_timer 1
scoreboard players remove @a[scores={execute.targeted_timer=1..}] execute.targeted_timer 1
scoreboard players set @a[scores={execute.targeting_timer=0}] execute.target 0