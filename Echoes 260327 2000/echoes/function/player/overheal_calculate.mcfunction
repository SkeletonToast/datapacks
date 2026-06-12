scoreboard players operation @s overheal_limit = @s Resolve
# homesteader difficulty is just unchanged

# retainer difficulty - 75%
scoreboard players operation @s[scores={EchoDifficulty=2..},tag=InCombat] overheal_limit /= @s 2
        # affects all difficulties
    scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit *= @s 3
        scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit /= @s 2

# vestige and aspirant difficulty - 50%

# monarch difficulty - 25%
    scoreboard players operation @s[scores={EchoDifficulty=5},tag=InCombat] overheal_limit /= @s 2