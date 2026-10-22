$scoreboard players operation @s generic_a = @s $(score)
$scoreboard players operation @s generic_b = @s $(round)
scoreboard players operation @s generic_a %= @s generic_b

# round
$execute if score @s generic_a matches 1.. run scoreboard players operation @s $(score) -= @s generic_a