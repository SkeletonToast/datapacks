# note: "at @s anchored eyes" is applied in the guns/_main function

execute if entity @s[scores={SneakTime=0..20}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either_specific \
    {"block":"#ss_armory:bullet_ignore","condition":"unless","entity":"!#ss_lib:not_alive","particle":"particle smoke ~ ~ ~ 0 0 0 0 1 normal @a", \
    "increment_distance":"0.25","max_lifetime":"200","run_on_block_success":"function ss_armory:properties/guns/bullet_hit_block", \
    "run_on_entity_success":"function ss_armory:properties/guns/bolt_action/damage_not_sneaking"}
execute if entity @s[scores={SneakTime=21..}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either_specific \
    {"block":"#ss_armory:bullet_ignore","condition":"unless","entity":"!#ss_lib:not_alive","particle":"particle smoke ~ ~ ~ 0 0 0 0 1 normal @a", \
    "increment_distance":"0.25","max_lifetime":"300","run_on_block_success":"function ss_armory:properties/guns/bullet_hit_block", \
    "run_on_entity_success":"function ss_armory:properties/guns/bolt_action/damage_sneaking"}

execute positioned ^ ^ ^0.5 run particle smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 5
execute positioned ^ ^ ^0.5 run particle small_flame ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 5

playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^0.5 2 0.1
playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^0.5 2 0.1
playsound minecraft:entity.firework_rocket.blast_far player @a ^ ^ ^0.5 1 0.1
playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 2 0.1
playsound minecraft:entity.blaze.hurt player @a ^ ^ ^0.5 0.5 0.7
playsound minecraft:block.stone.break player @a ^ ^ ^0.5 2 1

execute unless entity @s[scores={encumbered_timer=21..}] run scoreboard players add @s encumbered_timer 20

execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]

# playsound minecraft:entity.firework_rocket.blast player @a ^ ^ ^5 1 0.1
# playsound minecraft:entity.blaze.hurt player @a ^ ^ ^5 0.25 0.1
# playsound minecraft:block.stone.break player @a ^ ^ ^5 1 0.1

# what were these for?????
    # execute unless block ~ ~ ~ #ss_armory:bullet_ignore
    # execute if entity @e[type=!#ss_lib:not_alive]