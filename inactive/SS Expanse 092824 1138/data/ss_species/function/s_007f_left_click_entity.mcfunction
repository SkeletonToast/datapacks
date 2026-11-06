execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=3,dy=3,dz=3] run fill ~1 ~ ~ ~-1 ~ ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=-3,dy=-3,dz=-3] run fill ~1 ~ ~ ~-1 ~ ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=3,dy=3,dz=3] run fill ~ ~1 ~ ~ ~-1 ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=-3,dy=-3,dz=-3] run fill ~ ~1 ~ ~ ~-1 ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=3,dy=3,dz=3] run fill ~ ~ ~1 ~ ~ ~-1 cobweb replace #ss_library:unimportant
execute as @s[scores={Food=18..}] at @e[type=!#ss_library:not_alive,dx=-3,dy=-3,dz=-3] run fill ~ ~ ~1 ~ ~ ~-1 cobweb replace #ss_library:unimportant
effect give @s[scores={Food=18..}] hunger 1 99 true

execute as @s[scores={Food=12..17}] at @e[type=!#ss_library:not_alive,distance=..2] run fill ~1 ~ ~ ~-1 ~ ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=12..17}] at @e[type=!#ss_library:not_alive,distance=..2] run fill ~ ~1 ~ ~ ~-1 ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=12..17}] at @e[type=!#ss_library:not_alive,distance=..2] run fill ~ ~ ~1 ~ ~ ~-1 cobweb replace #ss_library:unimportant
execute as @s[scores={Food=12..17}] run effect give @s hunger 1 66 true

execute as @s[scores={Food=6..11}] run fill ~ ~ ~ ~ ~ ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=6..11}] run effect give @s hunger 1 33 true

scoreboard players operation @n[type=!#ss_library:not_alive] webbed_timer += @s Food

tag @s add HomarachLeftClickRaytrace

scoreboard players set @s raycast_lifetime 60