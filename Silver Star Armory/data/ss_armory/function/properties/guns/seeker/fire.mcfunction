# note: "at @s anchored eyes" is applied in the guns/_main function

execute positioned ^ ^ ^0.25 run function ss_armory:properties/guns/seeker/raycast

particle enchant ^ ^ ^0.5 0.3 0.3 0.3 0.01 10

playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^0.5 2 1
# playsound minecraft:entity.wither.spawn player @a ^ ^ ^0.5 0.1 2
playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 0.5 0.1
playsound minecraft:entity.blaze.hurt player @a ^ ^ ^0.5 0.5 0.7
playsound minecraft:block.stone.break player @a ^ ^ ^0.5 2 1

execute unless entity @s[scores={encumbered_timer=21..}] run scoreboard players add @s encumbered_timer 20

execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run xp add @s -1 points
execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]

# playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^5 1 0.1
# playsound minecraft:entity.blaze.hurt player @a ^ ^ ^5 0.25 0.1
# playsound minecraft:block.stone.break player @a ^ ^ ^5 1 0.1