$data modify entity @e[type=$(projectile),limit=1,distance=...1] Motion set from entity @s Pos
$scoreboard players set @e[type=$(projectile),limit=1,distance=...1] Age -100
# kill @s