$execute as @a run scoreboard players operation @s $(result) = @s $(stat1)
$execute as @a run scoreboard players operation @s $(result) += @s $(stat2)
# $execute as @a run scoreboard players operation @s $(result) += @s Resolve
$execute as @a run scoreboard players operation @s $(result) *= #const.3 value
$execute as @a run function math:round {score:$(result),round:10}
    $execute as @a if score @s $(stat1) >= @s $(stat2) run scoreboard players operation @s $(result) += @s $(stat2)
    $execute as @a if score @s $(stat2) >= @s $(stat1) run scoreboard players operation @s $(result) += @s $(stat1)
$execute as @a if score @s $(stat1) >= @s $(stat2) if score @s $(result) > @s $(stat1) run scoreboard players operation @s $(result) = @s $(stat1)
$execute as @a if score @s $(stat2) >= @s $(stat1) if score @s $(result) > @s $(stat2) run scoreboard players operation @s $(result) = @s $(stat2)