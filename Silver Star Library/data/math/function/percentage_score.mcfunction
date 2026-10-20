$scoreboard players operation @s generic_p = @s $(percentage_score)
$scoreboard players operation @s $(base_score) *= @s generic_p
$function math:divide/int {score:$(base_score),div:100}