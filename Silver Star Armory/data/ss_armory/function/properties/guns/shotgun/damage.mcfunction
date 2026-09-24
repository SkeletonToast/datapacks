function ss_armory:properties/guns/shotgun/shot {"radius":"1"}

execute positioned ~-2 ~-2 ~-2 at @e[dx=4,dy=4,dz=4] run damage @n[tag=!ShotgunFired] 14 minecraft:player_explosion by @s from @s
execute positioned ~-2 ~-2 ~-2 at @e[dx=4,dy=4,dz=4] run tag @n[tag=!ShotgunFired] add StatusEligible
execute positioned ~-2 ~-2 ~-2 at @e[dx=4,dy=4,dz=4] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 20

# execute at @e[dx=-2,dy=-2,dz=-2] run damage @n[tag=!ShotgunFired] 14 minecraft:player_explosion by @s from @s
# execute at @e[dx=-2,dy=-2,dz=-2] run tag @n[tag=!ShotgunFired] add StatusEligible
# execute at @e[dx=-2,dy=-2,dz=-2] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 20