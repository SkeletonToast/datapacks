scoreboard players operation @s overheal_limit = @s Resolve
# homesteader difficulty is just unchanged

# difficulty 2 - 75%
scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit *= @s 3
    scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit /= @s 2
# difficulty 3 - 50%
scoreboard players operation @s[scores={EchoDifficulty=2..3},tag=InCombat] overheal_limit /= @s 2
# difficulty 4-5 - 25%
scoreboard players operation @s[scores={EchoDifficulty=4..5},tag=InCombat] overheal_limit /= @s 2
    scoreboard players operation @s[scores={EchoDifficulty=4..5},tag=InCombat] overheal_limit /= @s 2
# difficulty 6 - 10%
execute as @s[scores={EchoDifficulty=6},tag=InCombat] run function math:round/10 {"score":"overheal_limit"}
# difficulty 7
scoreboard players set @s[scores={EchoDifficulty=7},tag=InCombat] overheal_limit 0

execute as @s[scores={TimeSinceRest=0}] run scoreboard players operation @s overheal_limit = @s Resolve