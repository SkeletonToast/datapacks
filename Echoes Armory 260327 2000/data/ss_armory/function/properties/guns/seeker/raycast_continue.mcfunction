execute as @s[scores={raycast_lifetime=..20}] unless entity @s[scores={raycast_lifetime=40..}] \
    positioned ^ ^ ^0.25 run function ss_armory:properties/guns/seeker/raycast

execute as @s[scores={raycast_lifetime=21..}] unless entity @s[scores={raycast_lifetime=40..}] \
    unless entity @e[type=!#ss_lib:not_alive,distance=0.5..3] \
    positioned ^ ^ ^0.25 run function ss_armory:properties/guns/seeker/raycast

# execute as @s[scores={raycast_lifetime=21..}] unless entity @s[scores={raycast_lifetime=40..}] \
#     unless entity @e[type=!#ss_lib:not_alive,distance=..5] \
#     if entity @e[type=!#ss_lib:not_alive,distance=5..10] \
#     facing entity @n[type=!#ss_lib:not_alive,distance=5..10] eyes positioned ^ ^ ^0.25 run \
#     function ss_armory:properties/guns/seeker/raycast

# execute as @s[scores={raycast_lifetime=21..}] unless entity @s[scores={raycast_lifetime=40..}] \
#     unless entity @e[type=!#ss_lib:not_alive,distance=0.5..3] \
#     if entity @e[type=!#ss_lib:not_alive,distance=3..5] \
#     facing entity @n[type=!#ss_lib:not_alive,distance=3..5] eyes positioned ^ ^ ^0.25 run \
#     function ss_armory:properties/guns/seeker/raycast

execute as @s[scores={raycast_lifetime=21..}] unless entity @s[scores={raycast_lifetime=40..}] \
    if entity @e[type=!#ss_lib:not_alive,distance=0.5..3] \
    facing entity @n[type=!#ss_lib:not_alive,distance=0.5..3] eyes positioned ^ ^ ^0.25 run \
    function ss_armory:properties/guns/seeker/raycast