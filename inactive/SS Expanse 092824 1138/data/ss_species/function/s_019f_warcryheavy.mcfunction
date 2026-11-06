playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 0.7 0.5
playsound minecraft:entity.blaze.death player @a ~ ~ ~ 0.7 1
playsound minecraft:entity.husk.death player @s ~ ~ ~ 0.7 0.5
playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.4 1
function ss_particles:fire_ring
function ss_particles:lavaburst

effect give @s strength 60 2 false
effect give @s resistance 60 1 false
effect give @s speed 60 4 false
effect give @s weakness 120 0 true
effect give @s slowness 120 1 true
effect give @s hunger 120 1 true
effect give @s blindness 1 0 true

scoreboard players set @s species019-03 -1200