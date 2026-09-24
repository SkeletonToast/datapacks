# remember to modify all calculations so that the values are not actually being modified to decimal amounts.

# attribute set
scoreboard players operation @s str_attributes += @s Strength
scoreboard players operation @s dex_attributes += @s Dexterity
scoreboard players operation @s mind_attributes += @s Mind
scoreboard players operation @s vit_attributes += @s Vitality
scoreboard players operation @s tact_attributes += @s Tact
scoreboard players operation @s soul_attributes += @s Soul

execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s str_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s str_attributes = @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s dex_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s dex_attributes = @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s mind_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s str_attributes = @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s vit_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s vit_attributes = @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s tact_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s tact_attributes = @s sse.difficulty.attribute_limit
execute as @s[scores={sse.difficulty.attribute_limit=1..}] if score @s soul_attributes > @s sse.difficulty.attribute_limit run scoreboard players operation @s soul_attributes = @s sse.difficulty.attribute_limit

execute store result score @s generic_h run attribute @s scale get 100
# commented out while i decide whether or not to keep the base movement speed buff for tall characters
    # execute unless score @s generic_h matches -200..200 run scoreboard players operation @s generic_h *= @s generic_h
    # scoreboard players set @s[scores={generic_h=201..}] generic_i 200
    # scoreboard players set @s[scores={generic_h=..-201}] generic_i -200
    # execute if score @s generic_h matches -200..200 run scoreboard players operation @s generic_h *= @s generic_i
    # function math:round {score:generic_h,round:100,reduce:true}

# resolve health and armor calculation
    function ss_lib:fetch/armor {s:"@s"}
    scoreboard players operation @s res_armor = @s Armor
        scoreboard players operation @s res_armor -= @s Fortitude
    scoreboard players operation @s generic_attribute = @s Resolve
        scoreboard players operation @s[scores={res_armor=1..}] generic_attribute -= @s res_armor
        execute if score @s generic_attribute <= @s Tenacity run scoreboard players operation @s generic_attribute = @s Tenacity

# max_health: +Res (health)
    function math:even {score:generic_attribute,sign:"-"}
        # this will round generic_attribute down to an even number if generic_a is an odd number,
        # because the modulus remainder will subtract 1 if it's odd, and 0 if it's even
    execute if score @s generic_attribute < @s Fortitude run scoreboard players operation @s generic_attribute = @s Fortitude
    execute if score @s generic_attribute > @s sse.difficulty.health_limit run scoreboard players operation @s generic_attribute = @s sse.difficulty.health_limit
    execute unless score @s generic_attribute = @s res_max_health run function parse:score_unended \
        {score:generic_attribute,function:"echoes:stats/set/max_health"}
            # this sets base max health, so don't worry about subtracting Tenacity or anything

# armor: -Res
    # scoreboard players operation @s generic_attribute = @s res_armor
    #     scoreboard players operation @s generic_a = @s generic_attribute
    #     scoreboard players operation @s generic_a %= @s 2
    #     scoreboard players operation @s generic_attribute -= @s generic_a
    # execute unless score @s generic_attribute = @s res_armor run function parse:score \
    #     {score:"generic_attribute",prepend:"-",append:"",prepend_position:0,append_position:0,function:"echoes:stats/set/armor_health"}

    # function ss_lib:fetch/armor {s:"@s[scores={Tact=30..}]"}
        # armor (if armorless): +Tact / 2 (If Tact ≥ 30, caps at 68 Tact)
        # armor_toughness (if armorless): +Tact / 5 (If Tact ≥ 30, caps at 68 Tact)

# movement_speed: +Dex / 1000
    scoreboard players operation @s smooth_sprint_multiplier = @s Food
        scoreboard players operation @s smooth_sprint_multiplier *= @s 10
        scoreboard players operation @s smooth_sprint_multiplier /= @s 5
        function math:round {score:smooth_sprint_multiplier,round:10,reduce:true}
    scoreboard players set @s[scores={smooth_sprint_multiplier=..-1}] smooth_sprint_multiplier 0
    # scoreboard players set @s smooth_sprint_multiplier 1

    scoreboard players operation @s generic_attribute = @s dex_attributes
            scoreboard players set @s[scores={generic_attribute=101..}] generic_attribute 100
        function math:percentage {score:generic_attribute,percentage:75}
        scoreboard players operation @s generic_attribute *= @s generic_h
        function math:round {score:generic_attribute,round:90,reduce:true}
    scoreboard players operation @s generic_c = @s SprintTime
        scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier
            scoreboard players operation @s[scores={SprintTime=..39}] generic_c *= @s 2
    execute if score @s smoothSprinting matches 1 as @s[scores={SprintTime=1..,StrafeTime=0}] if score @s generic_attribute > @s generic_c run scoreboard players operation @s generic_attribute = @s generic_c

        # strafing
        execute as @s[scores={SprintTime=..0}] run function echoes:stats/movement/strafe
            scoreboard players operation @s generic_c = @s StrafeTime
                scoreboard players operation @s generic_c *= @s smooth_sprint_multiplier
            tag @s remove SuperSprinting
            execute if score @s smoothSprinting matches 1 as @s[scores={StrafeTime=1..}] if score @s generic_attribute > @s generic_c run scoreboard players operation @s generic_attribute = @s generic_c

            # super sprinting
            execute as @s[tag=SurgeSprintEligible] if score @s SuperSprintTime >= @s SurgeSprintThreshold if predicate ss_lib:input/forward unless predicate ss_lib:input/sprint run function echoes:stats/movement/super_sprint
            execute as @s[scores={SprintTime=40..,Food=7..,SneakTime=0}] if predicate ss_lib:input/sprint run function echoes:stats/movement/super_sprint
            execute as @s[scores={StrafeTime=20..,SprintTime=0,Food=7..,SneakTime=0}] if predicate ss_lib:input/sprint run function echoes:stats/movement/super_sprint
            scoreboard players set @s[tag=!SuperSprinting] SuperSprintTime 0
        
        # diseligibility
        scoreboard players set @s[scores={SprintTime=..0,StrafeTime=..0}] generic_attribute 0
        scoreboard players set @s[scores={Food=..6}] generic_attribute 0
        scoreboard players set @s[scores={SneakTime=1..}] generic_attribute 0

        execute if score @s smoothSprinting matches 0 run scoreboard players remove @s generic_attribute 10
            # this is here if smooth sprinting is ever changed to be modifiable on a personal level.
            # this will mean that if you have smooth sprinting disabled, your maximum speed will be slightly lower, to compensate for the instant acceleration.

    scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_movement_speed run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:3,function:"echoes:stats/set/movement_speed"}

# fall_damage_multiplier: -[higher of Dex/Tact] (cap of 45) * 3 / 2
    scoreboard players operation @s generic_attribute = @s dex_attributes
    execute if score @s tact_attributes > @s dex_attributes run scoreboard players operation @s generic_attribute = @s tact_attributes
    scoreboard players set @s[scores={generic_attribute=46..}] generic_attribute 45
    scoreboard players operation @s generic_attribute *= @s 3
    scoreboard players operation @s generic_attribute /= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_tact_fall_damage_multiplier run function parse:score \
        {score:"generic_attribute",prepend:"-",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/fall_damage_multiplier"}

# safe_fall_distance: +[higher of Dex/Tact] / 3
    scoreboard players operation @s generic_attribute = @s dex_attributes
    execute if score @s tact_attributes > @s dex_attributes run scoreboard players operation @s generic_attribute = @s tact_attributes
        scoreboard players remove @s generic_attribute 20
    scoreboard players operation @s generic_attribute /= @s 3
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_tact_safe_fall_distance run function parse:score_unended \
        {score:"generic_attribute",function:"echoes:stats/set/safe_fall_distance"}

# jump_strength: +Dex
    scoreboard players operation @s generic_attribute = @s dex_attributes
    scoreboard players set @s[scores={generic_attribute=76..}] generic_attribute 75
    scoreboard players remove @s generic_attribute 20
    scoreboard players operation @s generic_attribute /= @s 2
    scoreboard players set @s[scores={Food=..6}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        # scoreboard players set @s[scores={SprintTime=0,StrafeTime=0,SneakTime=0}] generic_attribute 0
        scoreboard players set @s[tag=!InCombat,predicate=!ss_lib:input/sprint,predicate=!ss_lib:input/sneak] generic_attribute 0
        scoreboard players set @s[tag=InCombat,predicate=!ss_lib:input/sneak] generic_attribute 0
        execute if score $sse.gamerule.combat_jump_scaling true matches 0 unless score @s SuperSprintTime matches 1.. run scoreboard players set @s[tag=InCombat] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_jump_strength run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/jump_strength"}

# step_height: +(Dex - 10) * 2
    scoreboard players operation @s generic_attribute = @s dex_attributes
    scoreboard players remove @s generic_attribute 10
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s[scores={encumbrance=1..}] generic_attribute -= @s encumbrance
        scoreboard players set @s[scores={generic_attribute=51..}] generic_attribute 50
            
            execute store result score @s generic_s run attribute @s step_height get 100
            execute store result score @s generic_h run attribute @s step_height modifier value get dexterity.step_height 100
            scoreboard players operation @s generic_s -= @s generic_h
            scoreboard players remove @s generic_s 60
                # dangerous drop prevention
                execute at @s align y if block ~ ~-0.5 ~ #echoes:dangerous_drop_prevention run scoreboard players add @s[scores={OnGround=1},predicate=ss_lib:is/sneaking] generic_s 20
            scoreboard players set @s[scores={generic_s=..-1}] generic_s 0

            scoreboard players operation @s generic_attribute -= @s generic_s
        # scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0

    
    # execute as @s[scores={generic_attribute=10..}] unless score @s generic_attribute = @s dex_step_height run function parse:score_unended \
    #     {score:"generic_attribute",function:"echoes:stats/set/step_height"}
    # execute as @s[scores={generic_attribute=..9}] unless score @s generic_attribute = @s dex_step_height run function parse:score_unended \
    #     {score:"generic_attribute",function:"echoes:stats/set/step_height_0"}
    execute unless score @s generic_attribute = @s dex_step_height run function parse:score \
        {score:"generic_attribute",function:"echoes:stats/set/step_height",prepend:"",append:".",prepend_position:"0",append_position:"2"}

# sneaking_speed: +tact_attributes
    scoreboard players operation @s generic_attribute = @s tact_attributes
    scoreboard players remove @s generic_attribute 15
        # scoreboard players set @s[predicate=!ss_lib:is/sneaking] generic_attribute 0
        # scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_sneaking_speed run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/sneaking_speed"}

# block_break_speed: +Strength * 2
    scoreboard players operation @s generic_attribute = @s str_attributes
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s str_block_break_speed run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/block_break_speed"}

# knockback_resistance: +(Str - 20) * 2 (minimum of 0)
    # effective cap at 70 Strength
    execute unless score @s Absorption matches 1.. run function ss_lib:fetch/absorption {s:"@s",bypass_check:false}
    scoreboard players operation @s generic_attribute = @s str_attributes
        scoreboard players set @s[scores={generic_attribute=71..}] generic_attribute 70
    scoreboard players remove @s generic_attribute 20
    scoreboard players add @s[scores={Absorption=1..}] generic_attribute 20
    scoreboard players operation @s generic_attribute *= @s 2
    scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s str_knockback_resistance run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/knockback_resistance"}

# block_interaction_range and entity_interaction_range: +((Tact - 25) * 1.5)%
    scoreboard players operation @s generic_attribute = @s tact_attributes
        scoreboard players set @s[scores={generic_attribute=71..}] generic_attribute 70
    scoreboard players remove @s generic_attribute 25
    scoreboard players operation @s generic_attribute *= @s 10
        scoreboard players operation @s generic_attribute *= @s 3
            scoreboard players operation @s generic_attribute /= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        function math:round {score:generic_attribute,round:10,reduce:true}
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/interaction_range"}

# movement_efficiency: +(Tact * 2)
    # effective cap at 50 Tact
    scoreboard players operation @s generic_attribute = @s tact_attributes
    scoreboard players remove @s generic_attribute 15
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/movement_efficiency"}

# water_movement_efficiency: +(Tact * 2)
    scoreboard players operation @s generic_attribute = @s tact_attributes
    scoreboard players remove @s generic_attribute 15
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/water_movement_efficiency"}

# submerged_mining_speed: +Tact
    scoreboard players operation @s generic_attribute = @s tact_attributes
    scoreboard players remove @s generic_attribute 15
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/submerged_mining_speed"}

# camera_distance: +(Tact - 10) / 5
    scoreboard players set @s generic_attribute 0
    scoreboard players operation @s generic_attribute = @s tact_attributes
    execute on vehicle on passengers run scoreboard players operation @s[predicate=ss_lib:input/jump] generic_attribute = @s tact_attributes
        scoreboard players remove @s generic_attribute 10
        scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..2}] generic_attribute 0
            scoreboard players operation @s generic_a = @s SneakTime
            scoreboard players operation @s generic_a *= @s 2
        scoreboard players set @s[scores={SneakTime=0},tag=!tact_camera_locked] generic_attribute 0
        execute if score $tactCameraDolly true matches 1 as @s[tag=!tact_camera_locked] run execute if score @s generic_attribute > @s generic_a run scoreboard players operation @s generic_attribute = @s generic_a
    execute unless score @s generic_attribute = @s tact_camera_distance run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:1,function:"echoes:stats/set/camera_distance"}

# burning_time: -Soul * 8 / 5
    scoreboard players operation @s generic_attribute = @s soul_attributes
    scoreboard players remove @s generic_attribute 15
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s generic_attribute *= @s 2
    scoreboard players operation @s generic_attribute /= @s 5
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_burning_time run function parse:score \
        {score:"generic_attribute",prepend:"-",append:".",prepend_position:0,append_position:2,function:"echoes:stats/set/burning_time"}

# oxygen_bonus: +Soul
    scoreboard players operation @s generic_attribute = @s soul_attributes
    scoreboard players remove @s generic_attribute 15
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_oxygen_bonus run function parse:score \
        {score:"generic_attribute",prepend:"",append:".",prepend_position:0,append_position:1,function:"echoes:stats/set/oxygen_bonus"}

# luck: +Soul - 10
    scoreboard players operation @s generic_attribute = @s soul_attributes
    scoreboard players remove @s generic_attribute 15
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_luck run function parse:score_unended \
        {score:"generic_attribute",function:"echoes:stats/set/luck"}