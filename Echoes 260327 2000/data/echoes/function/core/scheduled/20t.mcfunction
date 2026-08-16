function echoes:fetch/dimension {"s":"@a"}
execute at @e[type=marker,tag=EmberSprite] run function echoes:campfires/lanterns/cleanse
execute as @a[scores={flight_level=..-1,FallFlying=1}] run scoreboard players set $strength player_motion.api.launch 3000
execute as @a[scores={flight_level=..-1,FallFlying=1}] at @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking

schedule function echoes:core/scheduled/20t 20t