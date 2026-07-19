execute if entity @s[scores={encumbrance_unadjusted=30..}] run title @s actionbar {"text":"!! You are too encumbered to Super Sprint. !!","color":"red"}
execute if entity @s[scores={encumbrance_unadjusted=30..}] run return fail

execute at @s[scores={OnGround=1}] run particle small_gust ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1 normal @a
execute at @s[scores={OnGround=1,Dexterity=20..}] run particle small_gust ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1 normal @a
execute at @s[scores={OnGround=1,SuperSprintTime=100..,Dexterity=20..}] run particle cloud ~ ~0.3 ~ 0.2 0.1 0.2 0.1 1 normal @a
# execute at @s[scores={OnGround=1,SuperSprintTime=100..,Dexterity=20..}] rotated ~90 ~ positioned ^-1.5 ^ ^ run particle small_gust ~ ~0.4 ~ 0.2 0.2 0.2 0.1 5 normal @a
execute at @s[scores={OnGround=1,SuperSprintTime=100..,sse.Physique=..49,Dexterity=40..}] rotated ~90 ~ positioned ^-1 ^ ^ run particle minecraft:explosion ~ ~0.6 ~ 0.2 0.2 0.2 0.1 1 normal @a
execute at @s[scores={OnGround=1,SuperSprintTime=100..,sse.Physique=50..}] rotated ~90 ~ positioned ^-1 ^ ^ run particle minecraft:explosion ~ ~0.6 ~ 0.2 0.2 0.2 0.1 1 normal @a

scoreboard players operation @s generic_c = @s SuperSprintTime
    scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier

execute if score @s smoothSprinting matches 1 if score @s generic_c < @s generic_attribute run scoreboard players operation @s generic_attribute += @s generic_c
execute if score @s smoothSprinting matches 1 if score @s generic_c >= @s generic_attribute run scoreboard players operation @s generic_attribute += @s generic_attribute
execute if score @s smoothSprinting matches 0 run scoreboard players operation @s generic_attribute += @s generic_attribute

tag @s remove SurgeSprintEligible
tag @s[scores={Dexterity=30..}] add SurgeSprintEligible
tag @s[scores={sse.Physique=50..}] add SurgeSprintEligible
tag @s[scores={EchoLevel=80..}] add SurgeSprintEligible
execute as @s[scores={SuperSprintTime=100,OnGround=1},tag=SurgeSprintEligible] at @s anchored eyes positioned ^ ^ ^ run playsound entity.breeze.wind_burst master @s ~ ~ ~ 0.3 0.7
execute as @s[scores={SuperSprintTime=100,OnGround=1},tag=SurgeSprintEligible] at @s anchored eyes positioned ^ ^ ^ run particle explosion_emitter
# scoreboard players add @s[scores={SuperSprintTime=100..},tag=SurgeSprintEligible] generic_attribute 50

scoreboard players operation @s[scores={SuperSprintTime=100..},tag=SurgeSprintEligible] generic_attribute += @s sse.Physique

scoreboard players operation @s generic_c = @s SuperSprintTime
    scoreboard players remove @s generic_c 100
    scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier
execute as @s[scores={SuperSprintTime=100..,Dexterity=70..},tag=SurgeSprintEligible] run scoreboard players operation @s generic_attribute += @s generic_c
execute as @s[scores={SuperSprintTime=100..},tag=SurgeSprintEligible] if score @s smoothSprinting matches 1 if score @s generic_c < @s sse.Physique run scoreboard players operation @s generic_attribute += @s generic_c
execute as @s[scores={SuperSprintTime=100..},tag=SurgeSprintEligible] if score @s smoothSprinting matches 1 if score @s generic_c >= @s sse.Physique run scoreboard players operation @s generic_attribute += @s sse.Physique
execute as @s[scores={SuperSprintTime=100..},tag=SurgeSprintEligible] if score @s smoothSprinting matches 0 run scoreboard players operation @s generic_attribute += @s sse.Physique

# super jumping
    tag @s[scores={SuperSprintTime=100..,Dexterity=70..,OnGround=1}] add SurgeJumpEligible
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] run scoreboard players set @s SuperSprintTime 80
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] run scoreboard players set $strength player_motion.api.launch 10000
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] at @s anchored eyes run function player_motion:api/launch_looking
    tag @s[predicate=ss_lib:input/jump] remove SurgeJumpEligible
    tag @s[scores={OnGround=0}] remove SurgeJumpEligible

# out of combat
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=40..59},tag=InCombat] hunger 1 4 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 9 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 14 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 19 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..9},tag=InCombat] hunger 1 24 true

effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=40..59},tag=InCombat] hunger 1 4 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 9 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 14 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 19 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=  ..9},tag=InCombat] hunger 1 24 true

# in combat
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=50..  },tag=InCombat] hunger 1 4 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=40..49},tag=InCombat] hunger 1 9 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 14 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 19 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 24 true
effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..09},tag=InCombat] hunger 1 29 true

effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=50..  },tag=InCombat] hunger 1 4 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=40..49},tag=InCombat] hunger 1 9 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 14 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 19 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 24 true
effect give @s[tag=SurgeSprintEligible,scores={SuperSprintTime=..100,OnGround=1,Dexterity=  ..09},tag=InCombat] hunger 1 29 true

scoreboard players add @s[scores={OnGround=1}] SuperSprintTime 1
tag @s add SuperSprinting