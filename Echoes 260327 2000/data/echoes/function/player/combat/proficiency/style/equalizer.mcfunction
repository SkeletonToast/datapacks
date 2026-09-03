scoreboard players set @s generic_e 40

# higher
scoreboard players operation @s generic_a = @s proficiency_str
scoreboard players operation @s generic_a > @s proficiency_dex

# lower
scoreboard players operation @s generic_b = @s proficiency_str
scoreboard players operation @s generic_b < @s proficiency_dex

# difference
scoreboard players operation @s generic_a -= @s generic_b

# if difference is under threshold
execute if score @s generic_a < @s generic_e run scoreboard players operation @s generic_a /= @s 2
execute if score @s generic_a < @s generic_e if score @s Strength > @s Dexterity run scoreboard players operation @s proficiency_str -= @s generic_a
execute if score @s generic_a < @s generic_e if score @s Strength > @s Dexterity run scoreboard players operation @s proficiency_dex += @s generic_a
execute if score @s generic_a < @s generic_e if score @s Dexterity > @s Strength run scoreboard players operation @s proficiency_dex -= @s generic_a
execute if score @s generic_a < @s generic_e if score @s Dexterity > @s Strength run scoreboard players operation @s proficiency_str += @s generic_a

# if difference is over or equal to threshold
execute if score @s generic_a >= @s generic_e if score @s Strength > @s Dexterity run scoreboard players operation @s proficiency_str -= @s generic_e
execute if score @s generic_a >= @s generic_e if score @s Strength > @s Dexterity run scoreboard players operation @s proficiency_dex += @s generic_e
execute if score @s generic_a >= @s generic_e if score @s Dexterity > @s Strength run scoreboard players operation @s proficiency_dex -= @s generic_e
execute if score @s generic_a >= @s generic_e if score @s Dexterity > @s Strength run scoreboard players operation @s proficiency_str += @s generic_e