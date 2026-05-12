execute as @s run damage @n 0.5 ss_armory:no_cooldown by @s from @s
execute as @s[scores={Tact=30..}] run damage @n 0.5 ss_armory:no_cooldown by @s from @s
execute as @s[scores={Tact=70..}] run damage @n 0.5 ss_armory:no_cooldown by @s from @s
tag @n add StatusEligible
scoreboard players add @n encumbered_timer 20

# execute at @s anchored eyes run playsound entity.arrow.hit_player player @s ^ ^ ^ 0.3 1

# execute as @e[type=!#ss_lib:not_alive,dx=0.1,dy=0.1,dz=0.1] run damage @s 7 minecraft:arrow
# execute as @e[type=!#ss_lib:not_alive,dx=-0.1,dy=-0.1,dz=-0.1] run damage @s 7 minecraft:arrow by @p[distance=0]