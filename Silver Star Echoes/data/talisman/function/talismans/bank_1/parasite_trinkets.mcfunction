scoreboard players set @s generic_a 50
$scoreboard players operation @s generic_a -= @s $(stat)
scoreboard players operation @s generic_a /= #const.5 value
$scoreboard players operation @s $(stat) $(sign)= @s generic_a