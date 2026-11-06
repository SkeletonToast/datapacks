scoreboard players add @s raycast_lifetime 1

particle snowflake ~ ~ ~ 0 0 0 0 3 normal @a

execute as @s[tag=!HomarachLeftClickRaytrace] unless block ~ ~ ~ #ss_library:nonsolidblocks positioned ^ ^ ^-0.25 run function ss_species:s_007f_left_click_cobweb

execute as @s[tag=!HomarachLeftClickRaytrace] if block ~ ~ ~ minecraft:cobweb positioned ^ ^ ^-0.25 run function ss_species:s_007f_left_click_cobweb

execute as @s[tag=!HomarachLeftClickRaytrace] if entity @e[type=!#ss_library:not_alive,dx=0.15,dy=0.15,dz=0.15] unless entity @e[type=!#ss_library:not_alive,dx=0.15,dy=0.15,dz=0.15,scores={species=007}] run function ss_species:s_007f_left_click_entity
execute as @s[tag=!HomarachLeftClickRaytrace] if entity @e[type=!#ss_library:not_alive,dx=-0.15,dy=-0.15,dz=-0.15] unless entity @e[type=!#ss_library:not_alive,dx=-0.15,dy=-0.15,dz=-0.15,scores={species=007}] run function ss_species:s_007f_left_click_entity

execute unless block ~ ~ ~ #ss_library:nonsolidblocks run return fail

scoreboard players set @s[scores={Food=12..18,raycast_lifetime=40..}] raycast_lifetime 60
scoreboard players set @s[scores={Food=6..11,raycast_lifetime=20..}] raycast_lifetime 60

execute unless entity @s[scores={raycast_lifetime=60..}] positioned ^ ^ ^0.25 run function ss_species:s_007f_raycast_left_click
execute as @s[scores={raycast_lifetime=60..}] run scoreboard players set @s raycast_lifetime 0