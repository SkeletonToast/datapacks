$scoreboard players operation @s generic_a = @s $(score)
scoreboard players operation @s generic_a %= #const.10 value
scoreboard players set @s generic_b 10

# round up
scoreboard players operation @s[scores={generic_a=5..}] generic_b -= @s generic_a
$scoreboard players operation @s[scores={generic_a=5..}] $(score) += @s generic_b

# round down
$scoreboard players operation @s[scores={generic_a=..4}] $(score) -= @s generic_a