$execute if score @s Strength > @s Dexterity run function echoes:player/combat/proficiency/profile/heavy_$(level)
$execute if score @s Strength < @s Dexterity run function echoes:player/combat/proficiency/profile/agile_$(level)
execute if score @s Strength = @s Dexterity run function echoes:player/combat/proficiency/profile/balanced