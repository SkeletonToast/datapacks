scoreboard players operation @s species025-06 += @s species025-05

scoreboard players set @s[scores={DamageDealt=10..}] generic_a 10
scoreboard players operation @s[scores={DamageDealt=10..}] generic_a *= @s DamageDealt
scoreboard players operation @s[scores={DamageDealt=10..}] generic_a *= @s species025-05
scoreboard players operation @s[scores={DamageDealt=10..}] species025-06 += @s generic_a

scoreboard players set @s[scores={species025-02=1..}] generic_a 100
scoreboard players operation @s[scores={species025-02=1..}] generic_a *= @s species025-05
scoreboard players operation @s[scores={species025-02=1..}] species025-06 += @s generic_a