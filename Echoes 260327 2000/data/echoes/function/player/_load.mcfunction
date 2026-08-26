scoreboard objectives add in_combat dummy

# scoreboard objectives add Day dummys
    # removed in favor of $day value

scoreboard objectives add GameTime dummy

scoreboard objectives add EchoDifficulty dummy

scoreboard objectives add xp_level level
scoreboard objectives add xp_stored dummy
scoreboard objectives add xp_stored_reserve dummy
scoreboard objectives add xp_cap dummy
scoreboard objectives add xp_increment dummy
scoreboard objectives add xp_stall_prevention dummy

scoreboard objectives add fear dummy
scoreboard objectives add fear_eligible dummy

scoreboard objectives add used_glow_berries minecraft.used:minecraft.glow_berries

gamerule natural_health_regeneration false

# aegis
    scoreboard objectives add aegis_timer dummy
    scoreboard objectives add aegis_timer_max dummy
    scoreboard objectives add aegis_timer_reduction dummy
    scoreboard objectives add used_golden_apple minecraft.used:minecraft.golden_apple
    scoreboard objectives add used_enchanted_golden_apple minecraft.used:minecraft.enchanted_golden_apple
    scoreboard objectives add aegis_amplifier_max dummy
    scoreboard objectives add aegis_amplifier dummy

    scoreboard objectives add aegis_theme trigger

    scoreboard objectives add killed_mob minecraft.custom:mob_kills
    scoreboard objectives add killed_player minecraft.custom:player_kills


# healing items
    scoreboard objectives add used_honey_bottle minecraft.used:minecraft.honey_bottle
    scoreboard objectives add used_golden_carrot minecraft.used:minecraft.golden_carrot

    scoreboard objectives add overheal_limit dummy

# encumbrance
    scoreboard objectives add encumbrance dummy
    scoreboard objectives add encumbrance_hard dummy
    scoreboard objectives add encumbrance_unadjusted dummy
    scoreboard objectives add encumbrance_reduction dummy
    scoreboard objectives add encumbrance_half dummy
    scoreboard objectives add encumbrance_items dummy
    scoreboard objectives add encumbrance_armor dummy

# combat
    # proficiency
        scoreboard objectives add proficiency dummy
        scoreboard objectives add proficiency_normalized dummy
        scoreboard objectives add proficiency_temp dummy
        scoreboard objectives add proficiency_str dummy
        scoreboard objectives add proficiency_dex dummy
        scoreboard objectives add proficiency_tact dummy
        scoreboard objectives add proficiency_soul dummy
        scoreboard objectives add proficiency_mind dummy
        scoreboard objectives add prof_str_unadj dummy
        scoreboard objectives add prof_dex_unadj dummy
        scoreboard objectives add prof_tact_unadj dummy
        scoreboard objectives add prof_soul_unadj dummy
        scoreboard objectives add prof_mind_unadj dummy
        scoreboard objectives add prof_unadj dummy
        
        scoreboard objectives add proficiency_recursion dummy
        scoreboard objectives add proficiency_inc_sum dummy
        # scoreboard objectives add minprof dummy
        # scoreboard objectives add prof dummy
        # scoreboard objectives add statmax dummy
        # scoreboard objectives add scale dummy
        # scoreboard objectives add truth dummy
        # scoreboard objectives add mintruth dummy
        # scoreboard objectives add lies dummy
        # scoreboard objectives add maybe dummy

    scoreboard objectives add ichor_damage dummy

    scoreboard objectives add used_goat_horn minecraft.used:minecraft.goat_horn

# elytra scaling stuff
    scoreboard objectives add elytra_boost_cooldown dummy
    scoreboard objectives add flight_level dummy
    scoreboard objectives add used_firework_rocket minecraft.used:firework_rocket
    scoreboard objectives add slipstream dummy
    scoreboard objectives add boosts_in_inventory dummy
        #amt of boosts in inventory
    scoreboard objectives add boosts_stored dummy
        #stored boosts
    # scoreboard objectives add flight_level dummy
        #maximum allotted amt of boosts
    scoreboard objectives add boost_visual_effects dummy
        #boost visual effect timer
    scoreboard objectives add boost_fuel dummy

    scoreboard objectives add air_brake_time dummy

# temperature
    scoreboard objectives add display_temp dummy

    scoreboard objectives add temp dummy
    scoreboard objectives add temp_default dummy
    scoreboard objectives add temp_modifier dummy
    scoreboard objectives add ambient_temp dummy
    scoreboard objectives add temp_dangerous dummy

    scoreboard objectives add cold_resistance dummy
    scoreboard objectives add heat_resistance dummy

    scoreboard objectives add temp_difference dummy
        # scoreboard objectives remove body_temp
        # scoreboard objectives remove body_temp_modifier

    scoreboard objectives add drink_water minecraft.used:minecraft.potion

# difficulty
    scoreboard objectives add sse.difficulty.attribute_limit dummy
    # feat limit
    scoreboard objectives add sse.difficulty.health_limit dummy
    scoreboard objectives add sse.difficulty.health_regeneration_limit dummy
    # aegis default
    # proficiency cap
    scoreboard objectives add sse.difficulty.exhaustion_multiplier dummy
    scoreboard objectives add sse.difficulty.radiation_multiplier dummy
    scoreboard objectives add sse.difficulty.leveling_multiplier dummy

# movement
scoreboard objectives add GlideTime dummy
scoreboard objectives add GlideEligible dummy
    # scoreboard objectives add strafe_input dummy
    # scoreboard objectives add strafe_direction dummy
    # scoreboard objectives add strafe_direction_stored dummy
    # scoreboard objectives add strafe_flag dummy