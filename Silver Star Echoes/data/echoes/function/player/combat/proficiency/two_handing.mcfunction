execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{properties:{properties:["two_handed"]}}}] run tag @s add two_handing_property

$scoreboard players operation @s[tag=two_handing_property] proficiency$(stat) *= #const.9 value
$execute as @s[tag=two_handing_property] run function math:round {score:proficiency$(stat),round:8,reduce:true}

$scoreboard players operation @s[tag=!two_handing_property] proficiency$(stat) *= #const.4 value
$execute as @s[tag=!two_handing_property] run function math:round {score:proficiency$(stat),round:3,reduce:true}

tag @s remove two_handing_property