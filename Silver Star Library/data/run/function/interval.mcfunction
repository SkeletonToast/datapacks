scoreboard players operation @s generic_a = @s GameTime
$scoreboard players set #const.$(ticks) value $(ticks)
$scoreboard players operation @s generic_a %= #const.$(ticks) value
$execute if score @s generic_a matches 0 run $(run)