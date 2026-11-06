execute as @a unless entity @s[scores={trait001=1..}] run scoreboard players set @s trait001 0
execute as @a unless entity @s[scores={trait002=1..}] run scoreboard players set @s trait002 0
execute as @a unless entity @s[scores={trait003=1..}] run scoreboard players set @s trait003 0

execute as @r[scores={trait001=1..}] run function ss_traits:t_001_agile
execute as @r[scores={trait002=1..}] run function ss_traits:t_002_winged
execute as @r[scores={trait003=1..}] run function ss_traits:t_003_quick_learner