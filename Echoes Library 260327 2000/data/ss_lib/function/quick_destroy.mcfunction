tag @e[type=item,scores={Age=97},nbt={Item:{components:{"minecraft:custom_data":{quick_destroy:true}}}}] add quick_destroy
execute at @e[tag=quick_destroy,scores={Age=40..98}] run particle small_flame ~ ~ ~ 0.2 0.2 0.2 0 5 force
execute at @e[tag=quick_destroy,scores={Age=98}] run function ss_particles:lavaburst
execute at @e[tag=quick_destroy,scores={Age=99}] run function ss_particles:fire_ring
execute at @e[tag=quick_destroy,scores={Age=99}] run playsound entity.generic.burn neutral @a
kill @e[tag=quick_destroy,scores={Age=100..}]