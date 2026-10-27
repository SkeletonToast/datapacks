function gamerule:custom/tick_range {source:execute,gamerule:positioned_lifetime,lower_limit:1,upper_limit:1000}

execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players operation @s execute.target = @n[distance=0] ssid
execute if entity @a[scores={DamageDealt=1..}] as @a[scores={DamageTaken=1..}] at @s on attacker if entity @s[type=player] run scoreboard players set @s execute.target_timer 100

scoreboard players remove @a[scores={execute.target_timer=1..}] execute.target_timer 1
scoreboard players set @a[scores={execute.target_timer=0}] execute.target 0