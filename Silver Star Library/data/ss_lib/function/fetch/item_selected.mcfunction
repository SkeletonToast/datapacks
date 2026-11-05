$execute as $(s) if score @s ItemSelected matches -1 if items entity @s weapon.mainhand * run scoreboard players set @s ItemSelected 1
$execute as $(s) if score @s ItemOffhand matches -1 if items entity @s weapon.offhand * run scoreboard players set @s ItemOffhand 1
$execute as $(s) if score @s ItemSelected matches -1 run scoreboard players set @s ItemSelected 0
$execute as $(s) if score @s ItemOffhand matches -1 run scoreboard players set @s ItemOffhand 0