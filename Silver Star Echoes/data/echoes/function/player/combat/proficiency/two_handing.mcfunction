execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["two_handed"]}}}] run tag @s add two_handing_property

$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) *= #const.9 value
$execute as @s[tag=two_handing_property] run function math:divide/int {score:proficiency$(stat),div:8}

$scoreboard players operation @s[tag=!two_handing_property] proficiency$(stat) *= #const.4 value
$execute as @s[tag=!two_handing_property] run function math:divide/int {score:proficiency$(stat),div:3}

tag @s remove two_handing_property