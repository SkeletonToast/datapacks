item replace entity @s weapon.offhand with firework_rocket[custom_name='{"italic":false,"text":"Sepherosh Boost"}',custom_data={Tags:["species025"]},fireworks={flight_duration:1}]

scoreboard players remove @s[scores={species025-04_01=1..}] species025-04_01 1
execute as @s[scores={species025-04_01=1..}] run function ss_species:s_025f_give_boost