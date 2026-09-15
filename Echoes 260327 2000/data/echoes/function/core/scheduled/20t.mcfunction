function echoes:fetch/dimension {s:"@a"}
execute at @e[type=marker,tag=EmberSprite] run function echoes:campfires/lanterns/cleanse
execute as @a[scores={flight_level=..-1,FallFlying=1}] run scoreboard players set $strength player_motion.api.launch 3000
execute as @a[scores={flight_level=..-1,FallFlying=1}] at @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking

# monarch combat entry
execute as @a[scores={EchoDifficulty=7,in_combat=0}] run function ss_lib:fetch/weapon
scoreboard players add @a[scores={EchoDifficulty=7,in_combat=0,WeaponType=1..}] in_combat 2000

schedule function echoes:core/scheduled/20t 20t