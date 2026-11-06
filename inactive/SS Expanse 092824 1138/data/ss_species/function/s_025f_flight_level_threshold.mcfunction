# threshold increase
scoreboard players set @s species025-07 5000
scoreboard players operation @s[scores={species025-05=4..}] generic_a = @s species025-05
scoreboard players remove @s[scores={species025-05=4..}] generic_a 3
scoreboard players operation @s[scores={species025-05=4..}] generic_a *= @s generic_a
scoreboard players operation @s[scores={species025-05=4..}] species025-07 *= @s generic_a

scoreboard players set @s[scores={species025-07=5000000..}] species025-07 5000000