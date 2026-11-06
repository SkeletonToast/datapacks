# "METABOLISM"

effect give @a[scores={ability012=1..,Food=20..,DamageTaken=1..}] hunger 3 255 true
execute at @a[scores={DamageTaken=1..}] as @a[distance=..5,scores={ability012=1..,DamageDealt=1..}] run effect give @s hunger 3 255 true
scoreboard players set @a[scores={ability012=1..,Food=20..,DamageTaken=1..}] ability012-01 60
scoreboard players remove @a[scores={ability012-01=1..}] ability012-01 1
effect clear @a[scores={ability012=1..,ability012-01=1..,Food=..19}] hunger