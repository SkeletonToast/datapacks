scoreboard players operation @s overheal_limit = @s Resolve
# homesteader difficulty is just unchanged

# difficulty 2 - 75%
scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit *= @s 3
    scoreboard players operation @s[scores={EchoDifficulty=2},tag=InCombat] overheal_limit /= @s 2
scoreboard players operation @s[scores={EchoDifficulty=2..3},tag=InCombat] overheal_limit /= @s 2