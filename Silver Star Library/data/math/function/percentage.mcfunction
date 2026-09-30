$scoreboard players set @s generic_p $(percentage)
$scoreboard players operation @s $(base) *= @s generic_p
$function math:round {score:$(base),round:100}