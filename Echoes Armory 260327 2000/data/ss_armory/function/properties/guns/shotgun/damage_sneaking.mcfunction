function ss_armory:properties/guns/shotgun/shot {"radius":"1"}
function ss_armory:properties/guns/shotgun/shot {"radius":"2"}

execute positioned ~-3 ~-3 ~-3 at @e[dx=6,dy=6,dz=6] run damage @n[tag=!ShotgunFired] 18 minecraft:player_explosion by @s from @s
execute positioned ~-3 ~-3 ~-3 at @e[dx=6,dy=6,dz=6] run tag @n[tag=!ShotgunFired] add StatusEligible
execute positioned ~-3 ~-3 ~-3 at @e[dx=6,dy=6,dz=6] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 30

# execute at @e[dx=-3,dy=-3,dz=-3] run damage @n[tag=!ShotgunFired] 18 minecraft:player_explosion by @s from @s
# execute at @e[dx=-3,dy=-3,dz=-3] run tag @n[tag=!ShotgunFired] add StatusEligible
# execute at @e[dx=-3,dy=-3,dz=-3] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 30