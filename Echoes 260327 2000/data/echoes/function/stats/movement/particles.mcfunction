$execute at @s[scores={$(condition)}] run particle small_gust ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1 normal @a
$execute at @s[scores={$(condition),Dexterity=20..}] run particle small_gust ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1 normal @a
$execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={$(condition),Dexterity=20..}] run particle cloud ~ ~0.3 ~ 0.2 0.1 0.2 0.1 1 normal @a
# $execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={$(condition),Dexterity=20..}] rotated ~90 ~ positioned ^-1.5 ^ ^ run particle small_gust ~ ~0.4 ~ 0.2 0.2 0.2 0.1 5 normal @a
execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={OnGround=1,sse.Physique=..49,Dexterity=40..},predicate=!ss_lib:is/swimming] rotated ~90 ~ positioned ^-1 ^ ^ run particle minecraft:explosion ~ ~0.6 ~ 0.2 0.2 0.2 0.1 1 normal @a
execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={OnGround=1,sse.Physique=50..},predicate=!ss_lib:is/swimming] rotated ~90 ~ positioned ^-1 ^ ^ run particle minecraft:explosion ~ ~0.6 ~ 0.2 0.2 0.2 0.1 1 normal @a

execute unless predicate ss_lib:is/swimming run return fail
execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={Dexterity=70..,InWater=2..}] run particle minecraft:bubble ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal @a
execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={Dexterity=70..,InWater=2..}] run particle minecraft:bubble_pop ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal @a
execute if score @s SuperSprintTime >= @s SuperSprintThreshold at @s[scores={Dexterity=70..,InWater=2..}] anchored eyes run particle minecraft:bubble ^ ^ ^5 5 5 5 0.1 20 normal @s