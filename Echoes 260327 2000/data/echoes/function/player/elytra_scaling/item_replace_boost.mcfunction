item replace entity @s weapon.offhand with firework_rocket[item_name='Elytra Boost',custom_data={elytra_boost:true},fireworks={flight_duration:1}]

scoreboard players remove @s[scores={boosts_stored=1..}] boosts_stored 1
execute as @s[scores={boosts_stored=1..}] run function echoes:player/elytra_scaling/give_boost