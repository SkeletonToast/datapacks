scoreboard players set @a[scores={RestOrRespawn=1}] of_recipes 0
    execute as @s unless entity @s[scores={of_recipes=1..}] unless entity @s[scores={of_recipes=..0}] run scoreboard players set @s of_recipes 0
# gamerule doLimitedCrafting true
    # the below code is used to schedule re-running of the recipes file
    # if it can't detect whether or not they're a scholar, it schedules itself to be run again in five seconds
scoreboard players add @a[scores={of_recipes=-1}] of_recipes 1
# execute as @a[scores={of_recipes=0}] run function oakfall:recipes