$execute as $(s) unless score @s ItemSelected matches -1 run return fail
$execute as $(s) if entity @s if items entity @s weapon.mainhand * run scoreboard players set @s ItemSelected 1
$execute as $(s) if entity @s if items entity @s weapon.offhand * run scoreboard players set @s ItemOffhand 1