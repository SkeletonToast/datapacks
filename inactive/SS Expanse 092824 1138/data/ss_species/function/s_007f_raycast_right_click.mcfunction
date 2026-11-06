scoreboard players add @s raycast_lifetime 1

particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a

execute if block ~ ~ ~ water run scoreboard players set @s raycast_lifetime 60
execute if block ~ ~ ~ lava run scoreboard players set @s raycast_lifetime 60

execute unless block ~ ~ ~ #ss_library:nonsolidblocks run execute positioned ^ ^ ^-1 run function ss_species:s_007f_right_click_block

execute if block ~ ~ ~ cobweb run execute run function ss_species:s_007f_right_click_cobweb

execute unless entity @s[scores={raycast_lifetime=60..}] positioned ^ ^ ^0.25 run function ss_species:s_007f_raycast_right_click
execute as @s[scores={raycast_lifetime=60..}] run scoreboard players set @s raycast_lifetime 0