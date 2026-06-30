scoreboard objectives add -1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 3 dummy
scoreboard objectives add 5 dummy
scoreboard objectives add 7 dummy
scoreboard objectives add 10 dummy
scoreboard objectives add generic_a dummy
scoreboard objectives add generic_b dummy
scoreboard objectives add generic_c dummy
scoreboard objectives add generic_d dummy
scoreboard objectives add generic_e dummy
scoreboard objectives add generic_f dummy
scoreboard objectives add generic_g dummy
scoreboard objectives add generic_h dummy
scoreboard objectives add generic_i dummy
scoreboard objectives add generic_j dummy
scoreboard objectives add generic_max dummy
scoreboard objectives add generic_min dummy

scoreboard objectives add true dummy

scoreboard objectives add Age dummy

scoreboard objectives add parse_score_recursions dummy
scoreboard objectives add parse_score_digits dummy
scoreboard objectives add parse_score_append_position dummy
scoreboard objectives add parse_score_prepend_position dummy
scoreboard objectives add parse_score_input dummy

scoreboard objectives add digit_counter dummy

# health / food
scoreboard objectives add Health dummy
scoreboard objectives add Absorption dummy
scoreboard objectives add TotalHealth health
scoreboard objectives add BaseMaxHealth dummy

scoreboard objectives add Food food

# combat
    # damage
    scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
    scoreboard objectives add DamageDealtAbsorbed minecraft.custom:minecraft.damage_dealt_absorbed
    scoreboard objectives add DamageDealtResisted minecraft.custom:minecraft.damage_dealt_resisted

    scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken
    scoreboard objectives add DamageAbsorbed minecraft.custom:minecraft.damage_absorbed
    scoreboard objectives add DamageResisted minecraft.custom:minecraft.damage_resisted

    # attributes
    scoreboard objectives add AttackDamage dummy
    scoreboard objectives add AttackSpeed dummy
    scoreboard objectives add AttackSpeedCap dummy

    scoreboard objectives add Armor armor
    scoreboard objectives add ArmorToughness dummy

    # gear values
    scoreboard objectives add WeaponType dummy
    scoreboard objectives add WeaponWeight dummy

    scoreboard objectives add ArmorType dummy
    scoreboard objectives add ArmorWeight dummy
    scoreboard objectives add HelmetType dummy
    scoreboard objectives add ChestplateType dummy
    scoreboard objectives add LeggingsType dummy
    scoreboard objectives add BootsType dummy

    scoreboard objectives add UsingBow dummy
    scoreboard objectives add UsingShield dummy

    # general scores
    scoreboard objectives add ItemSelected dummy
    scoreboard objectives add ItemOffhand dummy

    scoreboard objectives add Armorless dummy
    # scoreboard objectives remove Unclothed
    # scoreboard objectives remove Naked

scoreboard objectives add SoftGameTime dummy

scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add TimeSinceRest minecraft.custom:minecraft.time_since_rest
scoreboard objectives add RestOrRespawn dummy
scoreboard objectives add SoftTimeSinceDeath dummy
scoreboard objectives add SoftTimeSinceRest dummy
scoreboard objectives add SoftRestOrRespawn dummy

scoreboard objectives add SleepingTime dummy

scoreboard objectives add SneakTime minecraft.custom:sneak_time
scoreboard objectives add SprintTime dummy

# scoreboard objectives add DamageTakenType dummy

scoreboard objectives add PlayerKilled playerKillCount

scoreboard objectives add FallFlying dummy

scoreboard objectives add Fire dummy

scoreboard objectives add InWater dummy

scoreboard objectives add Dimension dummy
scoreboard objectives add OnGround dummy

scoreboard objectives add DayTime dummy

scoreboard objectives add xcoord dummy
scoreboard objectives add ycoord dummy
scoreboard objectives add zcoord dummy

scoreboard objectives add wayfinderd dummy
scoreboard objectives add wayfindertimer dummy

scoreboard objectives add deathx dummy
scoreboard objectives add deathy dummy
scoreboard objectives add deathz dummy

scoreboard objectives add raycast_lifetime dummy

scoreboard objectives add ss_gen_1 dummy
scoreboard objectives add ss_gen_2 dummy
scoreboard objectives add ss_gen_3 dummy
scoreboard objectives add ss_gen_4 dummy
scoreboard objectives add ss_gen_5 dummy

scoreboard objectives add attack_particle_timer dummy

function ss_lib:whitelist {"name":"SkeletonToast"}

scoreboard objectives add ssid dummy

# scheduled functions
schedule function ss_lib:scheduled_10t 10t
schedule function ss_lib:scheduled_20t 20t