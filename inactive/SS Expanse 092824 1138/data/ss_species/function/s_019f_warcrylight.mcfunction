playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 0.7 1
playsound minecraft:entity.blaze.death player @a ~ ~ ~ 0.7 2
playsound minecraft:entity.husk.death player @a ~ ~ ~ 0.7 1
execute at @a[distance=..20] run function ss_particles:fire_ring

effect give @a[distance=..20] strength 60 0 false
effect give @a[distance=..20] resistance 60 0 false
effect give @a[distance=..20] speed 60 0 false

scoreboard players set @e[distance=..20] ability004 1200
scoreboard players set @a[distance=..20] species019-03 1200