$scoreboard players operation @s $(stat) *= @s 10
$scoreboard players operation @s $(stat) /= @s 3

$scoreboard players operation @s generic_a = @s $(stat)
$scoreboard players operation @s $(stat) /= @s 10
scoreboard players operation @s generic_a %= @s 10
$scoreboard players add @s[scores={generic_a=5..}] $(stat) 1