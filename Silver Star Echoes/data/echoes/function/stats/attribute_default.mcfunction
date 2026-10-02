# Resolve
function parse:score_unended {score:Tenacity,function:"echoes:stats/attribute_default_max_health"}

# Dexterity
attribute @s movement_speed base reset
attribute @s fall_damage_multiplier base reset
attribute @s safe_fall_distance base reset
attribute @s jump_strength base reset
attribute @s step_height base reset
attribute @s sneaking_speed base reset

# Strength
attribute @s block_break_speed base set 0.70
    # 15 strength is needed to "break even"
attribute @s knockback_resistance base reset

# Tact
attribute @s block_interaction_range base reset
attribute @s entity_interaction_range base reset
attribute @s movement_efficiency base reset
attribute @s water_movement_efficiency base reset
attribute @s submerged_mining_speed base reset
attribute @s camera_distance base reset

# Soul
attribute @s burning_time base reset
    # - Spr * 0.016
        # - Spr / 100 * 8 / 5
attribute @s oxygen_bonus base reset
    # + Spr / 10
attribute @s luck base reset
    # + (Spr - 10) * 10

# other
attribute @s attack_damage base reset

attribute @s attack_speed base reset
attribute @s attack_knockback base reset
attribute @s armor base reset
attribute @s armor_toughness base set 10.00
attribute @s scale base reset
attribute @s gravity base reset
attribute @s waypoint_receive_range base reset
attribute @s waypoint_transmit_range base reset

# score resets
scoreboard players set @s res_max_health 0

scoreboard players set @s dex_movement_speed 0
scoreboard players set @s dex_tact_fall_damage_multiplier 0
scoreboard players set @s dex_tact_safe_fall_distance 0
scoreboard players set @s dex_jump_strength 0
scoreboard players set @s dex_step_height 0
scoreboard players set @s tact_sneaking_speed 0

scoreboard players set @s str_block_break_speed 0
scoreboard players set @s str_knockback_resistance 0

scoreboard players set @s tact_interaction_range 0
scoreboard players set @s tact_movement_efficiency 0
scoreboard players set @s tact_water_movement_efficiency 0
scoreboard players set @s tact_submerged_mining_speed 0

scoreboard players set @s soul_burning_time 0
scoreboard players set @s soul_oxygen_bonus 0
scoreboard players set @s soul_luck 0