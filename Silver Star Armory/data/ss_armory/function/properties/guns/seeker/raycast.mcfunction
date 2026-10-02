scoreboard players add @s raycast_lifetime 1

scoreboard players set @s SeekerDirection 0
execute if predicate {"type":"minecraft:random_chance","chance":0.50} run scoreboard players set @s SeekerDirection 1
execute if predicate {"type":"minecraft:random_chance","chance":0.33} run scoreboard players set @s SeekerDirection 2
execute if predicate {"type":"minecraft:random_chance","chance":0.25} run scoreboard players set @s SeekerDirection 3

particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a
particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0 3 normal @a

function raycast:entity_self_check with entity @s
execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run function ss_armory:properties/guns/seeker/damage
# execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run return fail

execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run function ss_armory:properties/guns/seeker/hit_block
execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s raycast_lifetime 0
execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run return fail

execute as @s[scores={SeekerDirection=0}] run function ss_armory:properties/guns/seeker/raycast_continue
execute as @s[scores={SeekerDirection=1}] positioned ^ ^0.1 ^ run function ss_armory:properties/guns/seeker/raycast_continue
execute as @s[scores={SeekerDirection=2}] positioned ^0.086 ^-0.05 ^ run function ss_armory:properties/guns/seeker/raycast_continue
execute as @s[scores={SeekerDirection=3}] positioned ^-0.086 ^-0.05 ^ run function ss_armory:properties/guns/seeker/raycast_continue

execute as @s[scores={raycast_lifetime=40..}] run scoreboard players set @s raycast_lifetime 0