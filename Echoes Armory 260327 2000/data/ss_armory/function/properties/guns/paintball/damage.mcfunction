damage @n 0.1 echoes:no_cooldown by @s from @s
effect give @n slowness 1 2 true
# effect give @n weakness 1 2 true
# effect give @n mining_fatigue 1 2 true
effect give @n slowness 3 1 true
# effect give @n weakness 3 1 true
# effect give @n mining_fatigue 3 1 true
tag @n add StatusEligible
scoreboard players add @n encumbered_timer 20
execute as @n if entity @s[type=player] run scoreboard players add @s PaintballHitsTaken 1

playsound minecraft:entity.slime.jump block @a ^ ^ ^-0.25 2 1.2

# attacker stuff
execute at @s anchored eyes run playsound minecraft:entity.arrow.hit_player player @s ^ ^ ^0.5 0.4 1
effect give @s speed 1 2 true
scoreboard players set @s[scores={PaintballReload=4..}] PaintballReload 3
execute as @n if entity @s[type=player] on attacker run scoreboard players add @s PaintballHitsDealt 1

# execute at @s anchored eyes run playsound entity.arrow.hit_player player @s ^ ^ ^ 0.3 1

# execute as @e[type=!#ss_lib:not_alive,dx=0.1,dy=0.1,dz=0.1] run damage @s 7 minecraft:arrow
# execute as @e[type=!#ss_lib:not_alive,dx=-0.1,dy=-0.1,dz=-0.1] run damage @s 7 minecraft:arrow by @p[distance=0]