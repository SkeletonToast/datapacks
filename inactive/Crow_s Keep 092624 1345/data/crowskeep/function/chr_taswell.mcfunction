scoreboard players set @s CharacterSpecies 9

execute as @s[scores={DamageTaken=1..}] as @a[distance=..5,scores={DamageDealt=1..}] run scoreboard players add @s chr-005 100
execute as @s[scores={DamageDealt=1..}] as @a[distance=..5,scores={DamageTaken=1..}] run scoreboard players add @s chr-005 100
effect give @a[scores={chr-005=200..}] nausea 5 0 true
effect give @a[scores={chr-005=400..}] hunger 5 1 true
effect give @a[scores={chr-005=1000..}] weakness 5 0 true
effect give @a[scores={chr-005=1400..}] darkness 5 0 true
scoreboard players remove @a[scores={chr-005=1..}] chr-005 1