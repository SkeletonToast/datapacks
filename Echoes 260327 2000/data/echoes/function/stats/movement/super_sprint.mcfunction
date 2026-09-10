execute if score @s encumbrance_unadjusted matches 30.. run title @s actionbar {"text":"!! You are too encumbered to move any faster. !!","color":"red"}
execute if score @s encumbrance_unadjusted matches 30.. run scoreboard players set @s pause_actionbars 40
execute if score @s encumbrance_unadjusted matches 30.. run return fail

execute if score @s SprintTime matches ..0 if score @s StrafeTime matches ..0 run return fail

execute if score @s temp_dangerous matches 8.. run title @s[scores={OnGround=1}] actionbar {"text":"!! Your body temperature is too high. You cannot move any faster. !!","color":"red"}
execute if score @s temp_dangerous matches ..-8 run title @s[scores={OnGround=1}] actionbar {"text":"!! Your body temperature is too low. You cannot move any faster. !!","color":"red"}
execute unless score @s temp_dangerous matches -7..7 run scoreboard players set @s pause_actionbars 40
execute unless score @s temp_dangerous matches -7..7 run return fail

execute unless predicate ss_lib:is/swimming run function echoes:stats/movement/particles {"condition":"OnGround=1"}
execute if predicate ss_lib:is/swimming
function ss_lib:fetch/in_water {"s":"@s[scores={Dexterity=70..,OnGround=0}]"}
execute as @s[scores={Dexterity=70..,OnGround=0}] run function echoes:stats/movement/particles {"condition":"InWater=1.."}

scoreboard players operation @s generic_c = @s SuperSprintTime
    scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier

execute if score @s smoothSprinting matches 1 if score @s generic_c < @s generic_attribute run scoreboard players operation @s generic_attribute += @s generic_c
execute if score @s smoothSprinting matches 1 if score @s generic_c >= @s generic_attribute run scoreboard players operation @s generic_attribute += @s generic_attribute
execute if score @s smoothSprinting matches 0 run scoreboard players operation @s generic_attribute += @s generic_attribute

tag @s remove SurgeSprintEligible
tag @s[scores={Dexterity=70..}] add SurgeSprintEligible
tag @s[scores={Dexterity=30..},predicate=!ss_lib:is/swimming] add SurgeSprintEligible
tag @s[scores={sse.Physique=50..},predicate=!ss_lib:is/swimming] add SurgeSprintEligible
tag @s[scores={EchoLevel=80..},predicate=!ss_lib:is/swimming] add SurgeSprintEligible
execute if score @s SuperSprintTime = @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible,scores={OnGround=1}] at @s anchored eyes positioned ^ ^ ^ run playsound entity.breeze.wind_burst master @s ~ ~ ~ 0.3 0.7
execute if score @s SuperSprintTime = @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible,scores={OnGround=1}] at @s anchored eyes positioned ^ ^ ^ run playsound entity.player.splash.high_speed master @s ~ ~ ~ 0.3 0.7
execute if score @s SuperSprintTime = @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible] at @s anchored eyes positioned ^ ^ ^ run particle explosion_emitter
execute if score @s SuperSprintTime = @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible] at @s anchored eyes run particle explosion_emitter ^ ^ ^5 0 0 0 0 1 normal @s
# scoreboard players add @s[tag=SurgeSprintEligible] generic_attribute 50

# scoreboard players operation @s[tag=SurgeSprintEligible] generic_attribute += @s sse.Physique
execute if score @s SuperSprintTime >= @s SurgeSprintThreshold run scoreboard players operation @s[tag=SurgeSprintEligible] generic_attribute += @s sse.Physique

scoreboard players operation @s generic_c = @s SuperSprintTime
    scoreboard players remove @s generic_c 100
#     scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier
# execute if score @s SuperSprintTime >= @s SurgeSprintThreshold as @s[scores={Dexterity=70..},tag=SurgeSprintEligible] run scoreboard players operation @s generic_attribute += @s generic_c
    # funny infinite acceleration
execute if score @s SuperSprintTime >= @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible] if score @s smoothSprinting matches 1 if score @s generic_c < @s sse.Physique run scoreboard players operation @s generic_attribute += @s generic_c
execute if score @s SuperSprintTime >= @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible] if score @s smoothSprinting matches 1 if score @s generic_c >= @s sse.Physique run scoreboard players operation @s generic_attribute += @s sse.Physique
execute if score @s SuperSprintTime >= @s SurgeSprintThreshold as @s[tag=SurgeSprintEligible] if score @s smoothSprinting matches 0 run scoreboard players operation @s generic_attribute += @s sse.Physique

# super jumping
    execute if score @s SuperSprintTime >= @s SurgeSprintThreshold run tag @s[scores={Dexterity=70..,OnGround=1}] add SurgeJumpEligible
    tag @s[predicate=ss_lib:is/swimming] remove SurgeJumpEligible
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] run scoreboard players operation @s SuperSprintTime = @s SurgeSprintThreshold
        execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] run scoreboard players operation @s SuperSprintTime /= @s 2
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] run scoreboard players set $strength player_motion.api.launch 10000
    execute as @s[tag=SurgeJumpEligible,predicate=ss_lib:input/jump] at @s anchored eyes run function player_motion:api/launch_looking
    tag @s[predicate=ss_lib:input/jump] remove SurgeJumpEligible
    tag @s[scores={OnGround=0}] remove SurgeJumpEligible

# out of combat
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=40..59},tag=InCombat] hunger 1 4 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 9 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 14 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 19 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..9},tag=InCombat] hunger 1 24 true

execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..9},tag=InCombat] hunger 1 24 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=40..59},tag=InCombat] hunger 1 4 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 9 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 14 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 19 true

# in combat
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=50..  },tag=InCombat] hunger 1 4 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=40..49},tag=InCombat] hunger 1 9 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 14 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 19 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 24 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=!SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..09},tag=InCombat] hunger 1 29 true

execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=50..  },tag=InCombat] hunger 1 4 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=40..49},tag=InCombat] hunger 1 9 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=30..39},tag=InCombat] hunger 1 14 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=20..29},tag=InCombat] hunger 1 19 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=10..19},tag=InCombat] hunger 1 24 true
execute unless score @s SuperSprintTime >= @s SurgeSprintThreshold run effect give @s[tag=SurgeSprintEligible,scores={OnGround=1,Dexterity=  ..09},tag=InCombat] hunger 1 29 true

scoreboard players add @s[scores={OnGround=1}] SuperSprintTime 1
scoreboard players add @s[scores={Dexterity=70..,OnGround=0,InWater=1..}] SuperSprintTime 1
tag @s add SuperSprinting