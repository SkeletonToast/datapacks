execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["two_handed"]}}}] run tag @s add two_handing_property

$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) *= @s 3
$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) *= @s 3
$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) /= @s 2
$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) /= @s 2
$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) /= @s 2

$scoreboard players operation @s[tag=!two_handing_property] proficiency$(stat) *= @s 2
$scoreboard players operation @s[tag=!two_handing_property] proficiency$(stat) *= @s 2
$scoreboard players operation @s[tag=!two_handing_property] proficiency$(stat) /= @s 3

tag @s remove two_handing_property