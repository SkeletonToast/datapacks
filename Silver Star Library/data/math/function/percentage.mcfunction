$scoreboard players set @s generic_p $(percentage)
$scoreboard players operation @s $(score) *= @s generic_p
$function math:round {score:$(score),round:100}