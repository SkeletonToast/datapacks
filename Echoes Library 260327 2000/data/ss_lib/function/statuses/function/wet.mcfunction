scoreboard players operation @s generic_a = @s wet_timer
scoreboard players operation @s generic_a %= @s 2
execute at @s[scores={generic_a=1,InWater=-1..0}] unless entity @s[predicate=ss_lib:in_rain] anchored eyes positioned ^ ^ ^ run particle falling_water ~ ~-0.4 ~ 0.15 0.15 0.15 0 1 normal @a
execute at @s[scores={generic_a=0,InWater=-1..0}] unless entity @s[predicate=ss_lib:in_rain] anchored feet positioned ^ ^ ^ run particle falling_water ~ ~0.4 ~ 0.15 0.15 0.15 0 1 normal @a

attribute @s minecraft:burning_time modifier add wet_burning_time -0.5 add_multiplied_total

execute at @s[predicate=ss_lib:is/on_fire] if block ~ ~ ~ fire run playsound block.fire.extinguish block @a
execute at @s[predicate=ss_lib:is/on_fire] if block ~ ~ ~ fire run fill ~ ~ ~ ~ ~ ~ air replace fire