$scoreboard players set @s generic_p $(percentage)
$scoreboard players operation @s $(base_score) *= @s generic_p
$function math:round {score:$(base_score),round:100,reduce:true}