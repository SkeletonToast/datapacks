function ss_lib:fetch/in_water {s:"@s"}
execute if score @s InWater matches 2..
execute as @s[gamemode=spectator] run return fail
execute if predicate ss_lib:is/invisible run return fail
execute at @s anchored eyes run particle dust{scale:0.6,color:[1,1,1]} ^ ^-0.2 ^0.5 0.01 0.01 0.01 0 2 normal @a