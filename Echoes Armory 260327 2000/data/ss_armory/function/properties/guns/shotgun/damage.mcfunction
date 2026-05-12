function ss_armory:properties/guns/shotgun/shot {"radius":"1"}

execute at @e[dx=2,dy=2,dz=2] run damage @n[tag=!ShotgunFired] 14 minecraft:player_explosion by @s from @s
execute at @e[dx=2,dy=2,dz=2] run tag @n[tag=!ShotgunFired] add StatusEligible
execute at @e[dx=2,dy=2,dz=2] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 20

execute at @e[dx=-2,dy=-2,dz=-2] run damage @n[tag=!ShotgunFired] 14 minecraft:player_explosion by @s from @s
execute at @e[dx=-2,dy=-2,dz=-2] run tag @n[tag=!ShotgunFired] add StatusEligible
execute at @e[dx=-2,dy=-2,dz=-2] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 20