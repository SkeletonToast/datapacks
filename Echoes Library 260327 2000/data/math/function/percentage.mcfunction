$scoreboard players set @s generic_a $(percentage)
$scoreboard players operation @s $(score) *= @s generic_a
$function math:round {score:$(score),round:100}