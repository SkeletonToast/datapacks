scoreboard players operation @s overheal_limit = @s Resolve
# homesteader difficulty is just unchanged

# difficulty 2 - 75%
scoreboard players operation @s[scores={EchoDifficulty=2}] overheal_limit *= @s 3
    scoreboard players operation @s[scores={EchoDifficulty=2}] overheal_limit /= @s 2
        scoreboard players operation @s[scores={EchoDifficulty=2}] overheal_limit /= @s 2
# difficulty 3 - 50%
scoreboard players operation @s[scores={EchoDifficulty=3}] overheal_limit /= @s 2
# difficulty 4-5 - 25%
scoreboard players operation @s[scores={EchoDifficulty=4..5}] overheal_limit /= @s 2
    scoreboard players operation @s[scores={EchoDifficulty=4..5}] overheal_limit /= @s 2
# difficulty 6 - 10%
execute as @s[scores={EchoDifficulty=6}] run function math:round/10 {"score":"overheal_limit"}
# difficulty 7
scoreboard players set @s[scores={EchoDifficulty=7}] overheal_limit 0

# difficulty 7
scoreboard players operation @s[scores={EchoDifficulty=7}] overheal_limit /= @s 2

execute if score @s overheal_limit < @s Tenacity run scoreboard players operation @s overheal_limit = @s Tenacity

scoreboard players operation @s[scores={TimeSinceRest=0}] overheal_limit = @s Resolve
scoreboard players set @s[scores={Vitality=0}] overheal_limit 0