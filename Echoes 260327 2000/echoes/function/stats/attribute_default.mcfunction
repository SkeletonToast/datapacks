# Resolve
function parse:score_unended {"function":"echoes:stats/attribute_default_max_health","score":"Tenacity"}

# Dexterity
attribute @s movement_speed base set 0.1
attribute @s fall_damage_multiplier base set 1.00
attribute @s safe_fall_distance base set 3
attribute @s jump_strength base set 0.42
attribute @s step_height base set 0.60
attribute @s sneaking_speed base set 0.30

# Strength
attribute @s block_break_speed base set 0.80
attribute @s knockback_resistance base set 0.0

# Tact
attribute @s block_interaction_range base set 4.50
attribute @s entity_interaction_range base set 3.00
attribute @s movement_efficiency base set 0.00
attribute @s water_movement_efficiency base set 0.00
attribute @s submerged_mining_speed base set 0.20
attribute @s camera_distance base set 4

# Soul
attribute @s burning_time base set 1.00
    # - Spr * 0.016
        # - Spr / 100 * 8 / 5
attribute @s oxygen_bonus base set 0.00
    # + Spr / 10
attribute @s luck base set 0.00
    # + (Spr - 10) * 10

# other
attribute @s attack_damage base set 1.00
attribute @s attack_speed base set 4.00
attribute @s attack_knockback base set 0.00
attribute @s armor base set 0.00
attribute @s armor_toughness base set 0.00
attribute @s scale base set 1.00
attribute @s gravity base set 0.08
attribute @s waypoint_receive_range base set 60000
attribute @s waypoint_transmit_range base set 60000

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