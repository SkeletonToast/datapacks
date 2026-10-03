$scoreboard players operation @s $(result) = @s $(stat1)
$scoreboard players operation @s $(result) += @s $(stat2)
$scoreboard players operation @s $(result) *= #const.3 value
$function math:round {score:$(result),round:10,reduce:true}
    $execute if score @s $(stat1) >= @s $(stat2) run scoreboard players operation @s $(result) += @s $(stat2)
    $execute if score @s $(stat2) >= @s $(stat1) run scoreboard players operation @s $(result) += @s $(stat1)
$execute if score @s $(stat1) >= @s $(stat2) if score @s $(result) > @s $(stat1) run scoreboard players operation @s $(result) = @s $(stat1)
$execute if score @s $(stat2) >= @s $(stat1) if score @s $(result) > @s $(stat2) run scoreboard players operation @s $(result) = @s $(stat2)