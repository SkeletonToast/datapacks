$execute if score @s Strength > @s Dexterity run scoreboard players add @s proficiency_str $(value)
$execute if score @s Strength > @s Dexterity if score @s proficiency_dex matches $(value).. run scoreboard players remove @s proficiency_dex $(value)
$execute if score @s Strength > @s Dexterity unless score @s proficiency_dex matches $(value).. run scoreboard players set @s proficiency_dex 0

$execute if score @s Strength < @s Dexterity run scoreboard players add @s proficiency_dex $(value)
$execute if score @s Strength < @s Dexterity if score @s proficiency_str matches $(value).. run scoreboard players remove @s proficiency_str $(value)
$execute if score @s Strength < @s Dexterity unless score @s proficiency_str matches $(value).. run scoreboard players set @s proficiency_str 0