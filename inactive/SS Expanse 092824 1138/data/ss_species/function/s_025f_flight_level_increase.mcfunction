scoreboard players add @s species025-05 1
tellraw @s {"color":"dark_green","text":"Your flying prowess has increased."}
tellraw @s {"color":"gray","italic":true,"text":"+You can now have one more concurrent Boost."}
scoreboard players operation @s species025-06 -= @s species025-07

scoreboard players operation @s species025-04_01 = @s species025-05
scoreboard players operation @s species025-04_01 -= @s species025-04
scoreboard players set @s species025-01 0
function ss_species:s_025f_flight_level_threshold