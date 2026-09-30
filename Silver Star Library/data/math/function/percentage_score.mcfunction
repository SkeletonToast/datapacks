$scoreboard players operation @s generic_p = @s $(percentage)
$scoreboard players operation @s $(score) *= @s generic_p
$function math:round {score:$(score),round:100}