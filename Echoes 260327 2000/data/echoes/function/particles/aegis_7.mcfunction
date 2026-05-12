particle dust_color_transition{from_color:[1.0,0.67,0.0],to_color:[.67,0.0,.67],scale:1} ~00.00 ~-0.7 ~-0.50 0 0 0 0 1 normal @a[distance=.1..]
scoreboard players set @s aegis_display_level 7

execute as @s[scores={aegis_display_level=8..,Absorption=..14}] run particle dust{color:[1,1,1],scale:2} ~00.35 ~-0.7 ~-0.35 0 0 0 0 1 normal @a[distance=.1..]
scoreboard players set @s[scores={aegis_display_level=8..,Absorption=..14}] aegis_display_level 7