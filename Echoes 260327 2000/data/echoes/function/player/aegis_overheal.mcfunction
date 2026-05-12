execute if score @s Health < @s overheal_limit run effect give @s[scores={aegis_timer_max=17..}] minecraft:regeneration 1 2 true
execute if score @s Health < @s overheal_limit run effect give @s[scores={aegis_timer_max=..16}] minecraft:regeneration 1 3 true
# execute at @s anchored eyes positioned ^ ^ ^-0.5 run particle heart ~ ~-0.5 ~ 0.2 0.2 0.2 0 5