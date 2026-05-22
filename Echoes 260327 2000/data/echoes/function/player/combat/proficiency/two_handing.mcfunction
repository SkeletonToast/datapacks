scoreboard players operation @s proficiency_str *= @s 2
scoreboard players operation @s proficiency_str *= @s 2
scoreboard players operation @s proficiency_str /= @s 3

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["two_handed"]}}}] run return fail
    # undoes 4/3x multiplier, and changes to a 9/8x multiplier
scoreboard players operation @s proficiency_str *= @s 3
scoreboard players operation @s proficiency_str *= @s 3
scoreboard players operation @s proficiency_str *= @s 3
scoreboard players operation @s proficiency_str /= @s 2
scoreboard players operation @s proficiency_str /= @s 2
scoreboard players operation @s proficiency_str /= @s 2
scoreboard players operation @s proficiency_str /= @s 2
scoreboard players operation @s proficiency_str /= @s 2