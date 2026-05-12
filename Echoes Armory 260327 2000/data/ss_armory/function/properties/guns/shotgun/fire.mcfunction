# note: "at @s anchored eyes" is applied in the guns/_main function

tag @s add ShotgunFired
attribute @s fall_damage_multiplier modifier add fall_damage_immunity -1 add_multiplied_total
execute if entity @s[scores={SneakTime=0..20,OnGround=1}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function ss_armory:properties/guns/shotgun/raycast {"max_lifetime":"20","run_on_success":"function ss_armory:properties/guns/shotgun/damage"}
execute if entity @s[scores={SneakTime=21..,OnGround=1}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function ss_armory:properties/guns/shotgun/raycast {"max_lifetime":"40","run_on_success":"function ss_armory:properties/guns/shotgun/damage_sneaking"}
execute if entity @s[scores={OnGround=0}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function ss_armory:properties/guns/shotgun/raycast {"max_lifetime":"30","run_on_success":"function ss_armory:properties/guns/shotgun/damage_airborne"}

execute positioned ^ ^ ^0.5 run particle smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 1
execute positioned ^ ^ ^0.5 run particle small_flame ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 1

playsound minecraft:entity.lightning_bolt.impact player @a ^ ^ ^0.5 1 1.5
playsound minecraft:entity.generic.explode player @a ^ ^ ^0.5 2 2
playsound minecraft:entity.firework_rocket.blast_far player @a ^ ^ ^0.5 2 0.1
playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 0.5 2
playsound minecraft:entity.blaze.hurt player @a ^ ^ ^0.5 0.5 1
playsound minecraft:block.wood.break player @a ^ ^ ^0.5 2 1

execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]

execute unless entity @s[scores={encumbered_timer=21..}] run scoreboard players add @s encumbered_timer 20

tag @s remove ShotgunFired