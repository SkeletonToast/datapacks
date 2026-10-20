$scoreboard players set @s generic_p $(percentage)
$scoreboard players operation @s $(base_score) *= @s generic_p
$function math:divide/int {score:$(base_score),div:100}