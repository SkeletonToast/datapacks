$function math:round/score {score:$(score),round:$(div)}

# reduction
$scoreboard players set @s generic_b $(div)
$scoreboard players operation @s $(score) /= @s generic_b