# combat experience
scoreboard players operation @a[scores={trait003=1..,DamageDealt=1..}] trait003-01 = @s DamageDealt
execute as @a[scores={trait003=1..,trait003-01=100..}] run xp add @s 1 points
execute as @a[scores={trait003=1..,trait003-01=100..}] run scoreboard players remove @s trait003-01 100
scoreboard players set @a[scores={trait003-01=..0}] trait003-01 0