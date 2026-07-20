# remember to modify all calculations so that the values are not actually being modified to decimal amounts.

execute store result score @s generic_h run attribute @s scale get 100
# commented out while i decide whether or not to keep the base movement speed buff for tall characters
    # execute unless score @s generic_h matches -200..200 run scoreboard players operation @s generic_h *= @s generic_h
    # scoreboard players set @s[scores={generic_h=201..}] generic_i 200
    # scoreboard players set @s[scores={generic_h=..-201}] generic_i -200
    # execute if score @s generic_h matches -200..200 run scoreboard players operation @s generic_h *= @s generic_i
    # function math:round/100_reduce {"score":"generic_h"}

# resolve health and armor calculation
    function ss_lib:fetch/armor {"s":"@s"}
    scoreboard players operation @s ResolveArmor = @s Armor
        scoreboard players operation @s ResolveArmor -= @s Fortitude
        scoreboard players set @s[scores={ResolveArmor=..-1}] ResolveArmor 0
    scoreboard players operation @s ResolveHealth = @s Resolve
        scoreboard players operation @s ResolveHealth -= @s ResolveArmor
        execute if score @s ResolveHealth <= @s Tenacity run scoreboard players operation @s ResolveHealth = @s Tenacity

# max_health: +Res (health)
    scoreboard players operation @s generic_attribute = @s ResolveHealth
        scoreboard players operation @s generic_a = @s generic_attribute
        scoreboard players operation @s generic_a %= @s 2
        scoreboard players operation @s generic_attribute -= @s generic_a
            # this will round generic_attribute down to an even number if generic_a is an odd number,
            # because the modulus remainder will subtract 1 if it's odd, and 0 if it's even
    scoreboard players set @s[scores={EchoDifficulty=..3,generic_attribute=41..}] generic_attribute 40
    scoreboard players set @s[scores={EchoDifficulty=4..,generic_attribute=61..}] generic_attribute 60
        # execute if score @s generic_attribute < @s Tenacity run scoreboard players operation @s generic_attribute = @s Tenacity
            # not necessary because ResolveHealth is already set to Tenacity if it's less
    execute if score @s generic_attribute < @s Fortitude run scoreboard players operation @s generic_attribute = @s Fortitude
    execute unless score @s generic_attribute = @s res_max_health run function parse:score_unended \
        {"score":"generic_attribute","function":"echoes:stats/set_max_health"}
            # this sets base max health, so don't worry about subtracting Tenacity or anything

# armor: -Res
    # scoreboard players operation @s generic_attribute = @s ResolveArmor
    #     scoreboard players operation @s generic_a = @s generic_attribute
    #     scoreboard players operation @s generic_a %= @s 2
    #     scoreboard players operation @s generic_attribute -= @s generic_a
    # execute unless score @s generic_attribute = @s res_armor_health run function parse:score \
    #     {"score":"generic_attribute","prepend":"-","append":"","prepend_position":0,"append_position":0,"function":"echoes:stats/set_armor_health"}

    # function ss_lib:fetch/armor {"s":"@s[scores={Tact=30..}]"}
        # armor (if armorless): +Tact / 2 (If Tact ≥ 30, caps at 68 Tact)
        # armor_toughness (if armorless): +Tact / 5 (If Tact ≥ 30, caps at 68 Tact)

# movement_speed: +Dex / 1000
    scoreboard players operation @s smooth_sprint_multiplier = @s Food
        scoreboard players operation @s smooth_sprint_multiplier *= @s 10
        scoreboard players operation @s smooth_sprint_multiplier /= @s 5
        function math:round/10_reduce {"score":"smooth_sprint_multiplier"}
    scoreboard players set @s[scores={smooth_sprint_multiplier=..-1}] smooth_sprint_multiplier 0
    # scoreboard players set @s smooth_sprint_multiplier 1

    scoreboard players operation @s generic_attribute = @s Dexterity
            scoreboard players set @s[scores={generic_attribute=101..}] generic_attribute 100
        scoreboard players operation @s generic_attribute *= @s 3
        scoreboard players operation @s generic_attribute /= @s 2
            scoreboard players operation @s generic_attribute /= @s 2
        scoreboard players operation @s generic_attribute *= @s generic_h
        function math:round/100_reduce {"score":"generic_attribute"}
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
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":3,"function":"echoes:stats/set_movement_speed"}
    execute as @s[scores={dex_movement_speed=1..}] run scoreboard players operation @s generic_max = @s dex_movement_speed

# fall_damage_multiplier: -[higher of Dex/Tact] (cap of 45) * 3 / 2
    scoreboard players operation @s generic_attribute = @s Dexterity
    execute if score @s Tact > @s Dexterity run scoreboard players operation @s generic_attribute = @s Tact
    scoreboard players set @s[scores={generic_attribute=46..}] generic_attribute 45
    scoreboard players operation @s generic_attribute *= @s 3
    scoreboard players operation @s generic_attribute /= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_tact_fall_damage_multiplier run function parse:score \
        {"score":"generic_attribute","prepend":"-","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_fall_damage_multiplier"}

# safe_fall_distance: +[higher of Dex/Tact] / 3
    scoreboard players operation @s generic_attribute = @s Dexterity
    execute if score @s Tact > @s Dexterity run scoreboard players operation @s generic_attribute = @s Tact
        scoreboard players remove @s generic_attribute 20
    scoreboard players operation @s generic_attribute /= @s 3
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_tact_safe_fall_distance run function parse:score_unended \
        {"score":"generic_attribute","function":"echoes:stats/set_safe_fall_distance"}

# jump_strength: +Dex
    scoreboard players operation @s generic_attribute = @s Dexterity
    scoreboard players set @s[scores={generic_attribute=76..}] generic_attribute 75
    scoreboard players remove @s generic_attribute 20
    scoreboard players operation @s generic_attribute /= @s 2
    scoreboard players set @s[scores={Food=..6}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        scoreboard players set @s[scores={SprintTime=0,StrafeTime=0,SneakTime=0}] generic_attribute 0
        scoreboard players set @s[predicate=!ss_lib:input/sprint] generic_attribute 0
        execute if score $combatJumpScaling true matches 0 unless score @s SuperSprintTime matches 1.. run scoreboard players set @s[tag=InCombat] generic_attribute 0
    execute unless score @s generic_attribute = @s dex_jump_strength run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_jump_strength"}

# step_height: +(Dex - 10) * 2
    scoreboard players operation @s generic_attribute = @s Dexterity
    scoreboard players remove @s generic_attribute 10
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s[scores={encumbrance=1..}] generic_attribute -= @s encumbrance
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=51..}] generic_attribute 50
    # execute as @s[scores={generic_attribute=10..}] unless score @s generic_attribute = @s dex_step_height run function parse:score_unended \
    #     {"score":"generic_attribute","function":"echoes:stats/set_step_height"}
    # execute as @s[scores={generic_attribute=..9}] unless score @s generic_attribute = @s dex_step_height run function parse:score_unended \
    #     {"score":"generic_attribute","function":"echoes:stats/set_step_height_0"}
    execute unless score @s generic_attribute = @s dex_step_height run function parse:score \
        {"score":"generic_attribute","function":"echoes:stats/set_step_height","prepend":"","append":".","prepend_position":"0","append_position":"2"}

# sneaking_speed: +Tact
    scoreboard players operation @s generic_attribute = @s Tact
        scoreboard players set @s[predicate=ss_lib:is/sneaking] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_sneaking_speed run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_sneaking_speed"}

# block_break_speed: +(Str - 1) * 2
    scoreboard players operation @s generic_attribute = @s Strength
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s str_block_break_speed run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_block_break_speed"}

# knockback_resistance: +(Str - 20) * 2 (minimum of 0)
    # effective cap at 70 Strength
    function ss_lib:fetch/absorption {"s":"@s"}
    scoreboard players operation @s generic_attribute = @s Strength
    scoreboard players remove @s generic_attribute 20
    scoreboard players add @s[scores={Absorption=1..}] generic_attribute 20
    scoreboard players operation @s generic_attribute *= @s 2
    scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s str_knockback_resistance run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_knockback_resistance"}

# block_interaction_range and entity_interaction_range: +((Tact - 25) * 1.5)%
    scoreboard players operation @s generic_attribute = @s Tact
        scoreboard players set @s[scores={generic_attribute=71..}] generic_attribute 70
    scoreboard players remove @s generic_attribute 25
    scoreboard players operation @s generic_attribute *= @s 10
        scoreboard players operation @s generic_attribute *= @s 3
            scoreboard players operation @s generic_attribute /= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
        function math:round/10_reduce {"score":"generic_attribute"}
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_interaction_range"}

# movement_efficiency: +(Tact * 2)
    # effective cap at 50 Tact
    scoreboard players operation @s generic_attribute = @s Tact
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_movement_efficiency"}

# water_movement_efficiency: +(Tact * 2)
    scoreboard players operation @s generic_attribute = @s Tact
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_water_movement_efficiency"}

# submerged_mining_speed: +Tact
    scoreboard players operation @s generic_attribute = @s Tact
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s tact_interaction_range run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_submerged_mining_speed"}

# camera_distance: +(Tact - 10) / 5
    scoreboard players operation @s generic_attribute = @s Tact
        scoreboard players remove @s generic_attribute 10
        scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players set @s[scores={SneakTime=0}] generic_attribute 0
        scoreboard players set @s[scores={generic_attribute=..2}] generic_attribute 0
            scoreboard players operation @s generic_a = @s SneakTime
            scoreboard players operation @s generic_a *= @s 2
        execute if score $tactCameraDolly true matches 1 run execute if score @s generic_attribute > @s generic_a run scoreboard players operation @s generic_attribute = @s generic_a
    execute unless score @s generic_attribute = @s tact_camera_distance run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":1,"function":"echoes:stats/set_camera_distance"}

# burning_time: -SoulSigned * 8 / 5
    scoreboard players operation @s generic_attribute = @s Soul
    scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s generic_attribute *= @s 2
        scoreboard players operation @s generic_attribute *= @s 2
    scoreboard players operation @s generic_attribute /= @s 5
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_burning_time run function parse:score \
        {"score":"generic_attribute","prepend":"-","append":".","prepend_position":0,"append_position":2,"function":"echoes:stats/set_burning_time"}

# oxygen_bonus: +SoulSigned
    scoreboard players operation @s generic_attribute = @s Soul
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_oxygen_bonus run function parse:score \
        {"score":"generic_attribute","prepend":"","append":".","prepend_position":0,"append_position":1,"function":"echoes:stats/set_oxygen_bonus"}

# luck: +SoulSigned - 10
    scoreboard players operation @s generic_attribute = @s Soul
    scoreboard players remove @s generic_attribute 10
        scoreboard players set @s[scores={generic_attribute=..-1}] generic_attribute 0
    execute unless score @s generic_attribute = @s soul_luck run function parse:score_unended \
        {"score":"generic_attribute","function":"echoes:stats/set_luck"}