function ss_armory:properties/guns/shotgun/shot {"radius":"2"}

execute at @e[dx=2,dy=2,dz=2] run damage @n[tag=!ShotgunFired] 8 minecraft:player_explosion by @s from @s
execute at @e[dx=2,dy=2,dz=2] run tag @n[tag=!ShotgunFired] add StatusEligible
execute at @e[dx=2,dy=2,dz=2] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 30

execute at @e[dx=-2,dy=-2,dz=-2] run damage @n[tag=!ShotgunFired] 8 minecraft:player_explosion by @s from @s
execute at @e[dx=-2,dy=-2,dz=-2] run tag @n[tag=!ShotgunFired] add StatusEligible
execute at @e[dx=-2,dy=-2,dz=-2] run scoreboard players add @n[tag=!ShotgunFired] encumbered_timer 30