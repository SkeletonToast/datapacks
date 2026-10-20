$scoreboard players operation @s $(result) = @s $(stat1)
$scoreboard players operation @s $(result) += @s $(stat2)
$scoreboard players operation @s $(result) *= #const.2 value
$function math:divide/int {score:$(result),div:10}
    $execute if score @s $(stat1) >= @s $(stat2) run scoreboard players operation @s $(result) += @s $(stat2)
    $execute if score @s $(stat2) >= @s $(stat1) run scoreboard players operation @s $(result) += @s $(stat1)
$execute if score @s $(stat1) >= @s $(stat2) if score @s $(result) > @s $(stat1) run scoreboard players operation @s $(result) = @s $(stat1)
$execute if score @s $(stat2) >= @s $(stat1) if score @s $(result) > @s $(stat2) run scoreboard players operation @s $(result) = @s $(stat2)