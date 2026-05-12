scoreboard players add @a trait001 0
scoreboard players add @a trait002 0
scoreboard players add @a trait003 0
scoreboard players add @a trait004 0

execute as @r[scores={trait001=1..}] run function ss_traits:t_001_agile
execute as @r[scores={trait002=1..}] run function ss_traits:t_002_winged
execute as @r[scores={trait003=1..}] run function ss_traits:t_003_quick_learner
execute as @r[scores={trait004=1..}] run function ss_traits:t_004_stealthy