# execute as @a at @s run tag @e[tag=!StatusEligible,distance=..20,type=!#ss_lib:not_alive] add StatusEligible
tag @a add StatusEligible

# base activity scores
execute as @a unless entity @s[scores={alert_active=0..}] run scoreboard players set @s alert_active -1
execute as @a unless entity @s[scores={aggressive_active=0..}] run scoreboard players set @s aggressive_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={bleeding_active=0..}] run scoreboard players set @s bleeding_active -1
execute as @a unless entity @s[scores={bouncy_active=0..}] run scoreboard players set @s bouncy_active -1
execute as @a unless entity @s[scores={disabled_active=0..}] run scoreboard players set @s disabled_active -1
execute as @a unless entity @s[scores={disarmed_active=0..}] run scoreboard players set @s disarmed_active -1
execute as @a unless entity @s[scores={disoriented_active=0..}] run scoreboard players set @s disoriented_active -1
execute as @a unless entity @s[scores={encumbered_active=0..}] run scoreboard players set @s encumbered_active -1
execute as @a unless entity @s[scores={enshrouded_active=0..}] run scoreboard players set @s enshrouded_active -1
execute as @a unless entity @s[scores={fortified_active=0..}] run scoreboard players set @s fortified_active -1
execute as @a unless entity @s[scores={feeble_active=0..}] run scoreboard players set @s feeble_active -1
execute as @a unless entity @s[scores={fragile_active=0..}] run scoreboard players set @s fragile_active -1
execute as @a unless entity @s[scores={frenzied_active=0..}] run scoreboard players set @s frenzied_active -1
execute as @a unless entity @s[scores={frightened_active=0..}] run scoreboard players set @s frightened_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={frozen_active=0..}] run scoreboard players set @s frozen_active -1
execute as @a unless entity @s[scores={hesitant_active=0..}] run scoreboard players set @s hesitant_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={hobbled_active=0..}] run scoreboard players set @s hobbled_active -1
    # execute as @a unless entity @s[scores={incendiary_active=0..}] run scoreboard players set @s incendiary_active -1
execute as @a unless entity @s[scores={lightweight_active=0..}] run scoreboard players set @s lightweight_active -1
execute as @a unless entity @s[scores={recover_active=0..}] run scoreboard players set @s recover_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={rooted_active=0..}] run scoreboard players set @s rooted_active -1
execute as @a unless entity @s[scores={surgical_active=0..}] run scoreboard players set @s surgical_active -1
execute as @a unless entity @s[scores={satiated_active=0..}] run scoreboard players set @s satiated_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={shocked_active=0..}] run scoreboard players set @s shocked_active -1
execute as @a unless entity @s[scores={terrified_active=0..}] run scoreboard players set @s terrified_active -1
execute as @a unless entity @s[scores={tormented_active=0..}] run scoreboard players set @s tormented_active -1
execute as @a unless entity @s[scores={unnerved_active=0..}] run scoreboard players set @s unnerved_active -1
execute as @a unless entity @s[scores={vulnerable_active=0..}] run scoreboard players set @s vulnerable_active -1
execute as @e[tag=StatusEligible] unless entity @s[scores={webbed_active=0..}] run scoreboard players set @s webbed_active -1

# AGGRESSIVE
scoreboard players set @a[scores={aggressive_amount=1..}] aggressive_amount 0
scoreboard players add @a[scores={aggressive_timer=1..}] aggressive_amount 20
scoreboard players set @a[scores={aggressive_amount=..-1}] aggressive_amount 0
    # execute as @a[scores={aggressive_timer=1..}] run scoreboard players operation @s aggressive_amount += @s aggressive_timer
execute as @a[scores={aggressive_active=0}] run attribute @s minecraft:attack_damage modifier remove aggressive_attack_damage
execute as @a[scores={aggressive_active=0}] run attribute @s minecraft:attack_speed modifier remove aggressive_attack_speed

# BLEEDING
scoreboard players set @e[tag=StatusEligible,type=#minecraft:undead,scores={bleeding_timer=1..}] bleeding_damage 0
scoreboard players set @e[tag=StatusEligible,scores={bleeding_active=-1,bleeding_damage=1..}] bleeding_damage 0

# BOUNCY
scoreboard players set @a[scores={SoftRestOrRespawn=1}] bouncy_amount 0
execute as @a[scores={bouncy_active=0}] run attribute @s minecraft:gravity modifier remove bouncy_gravity
execute as @a[scores={bouncy_active=..0,OnGround=1}] run attribute @s minecraft:fall_damage_multiplier modifier remove bouncy_fall_damage_multiplier
execute as @a[scores={bouncy_active=0}] run attribute @s minecraft:gravity modifier remove bouncy_bounce_gravity

# DISABLED
    # execute as @a run scoreboard players operation @s[scores={disabled_active=1,species=..-1}] species *= @s disabled_multiply

# DISARMED - should only be run through timer
execute as @a[scores={disarmed_active=0}] run attribute @s minecraft:attack_speed modifier remove disarmed_attack_speed

# ENCUMBERED
scoreboard players set @e[tag=StatusEligible,scores={encumbered_amount=1..}] encumbered_amount 0
scoreboard players add @e[tag=StatusEligible,scores={encumbered_timer=1..}] encumbered_amount 20
scoreboard players set @e[tag=StatusEligible,scores={encumbered_amount=..-1}] encumbered_amount 0
    # execute as @e[tag=StatusEligible,scores={encumbered_timer=1..19}] run scoreboard players operation @s encumbered_amount += @s encumbered_timer
    # scoreboard players add @e[tag=StatusEligible,scores={encumbered_timer=20..}] encumbered_amount 20
    # scoreboard players set @e[tag=StatusEligible,scores={encumbered_amount=..-1}] encumbered_amount 0
execute as @e[tag=StatusEligible,scores={encumbered_active=0}] run attribute @s minecraft:jump_strength modifier remove encumbered_jump_strength
execute as @e[tag=StatusEligible,scores={encumbered_active=0}] run attribute @s minecraft:movement_speed modifier remove encumbered_movement_speed

# FEEBLE
execute as @a[scores={feeble_active=0}] run attribute @s minecraft:movement_speed modifier remove feeble_armor_movement_speed
execute as @a[scores={feeble_active=0}] run attribute @s minecraft:movement_speed modifier remove feeble_weapon_movement_speed
execute as @a[scores={feeble_active=0}] run attribute @s minecraft:movement_speed modifier remove feeble_shield_movement_speed
execute as @a[scores={feeble_active=0}] run attribute @s minecraft:jump_strength modifier remove feeble_jump_strength

# FORTIFIED
execute as @a[scores={fortified_active=0}] run attribute @s minecraft:armor modifier remove fortified_armor
execute as @a[scores={fortified_active=0}] run attribute @s minecraft:armor_toughness modifier remove fortified_armor_toughness

# FRAGILE
execute as @a[scores={fragile_active=0}] run attribute @s minecraft:armor modifier remove fragile_armor
execute as @a[scores={fragile_active=0}] run attribute @s minecraft:armor_toughness modifier remove fragile_armor_toughness

# FRENZIED
execute as @a[scores={frenzied_active=0}] run attribute @s minecraft:attack_damage modifier remove frenzied_attack_damage
scoreboard players set @a[scores={frenzied_damage=1..}] frenzied_damage 0

# FRIGHTENED
execute as @a[scores={frightened_active=0}] run attribute @s minecraft:armor modifier remove frightened_armor

# FRIGHTENING
scoreboard players set @a[scores={frightening_timer=1..,frightened_timer=1..}] frightened_timer 0

# HESITANT
scoreboard players set @e[tag=StatusEligible,scores={hesitant_amount=1..}] hesitant_amount 0
scoreboard players add @e[tag=StatusEligible,scores={hesitant_timer=1..}] hesitant_amount 20
scoreboard players set @e[tag=StatusEligible,scores={hesitant_amount=..-1}] hesitant_amount 0
    # execute as @e[tag=StatusEligible,scores={hesitant_timer=1..}] run scoreboard players operation @s hesitant_amount += @s hesitant_timer
execute as @e[tag=StatusEligible,scores={hesitant_active=0}] run attribute @s minecraft:attack_damage modifier remove hesitant_attack_damage
execute as @e[tag=StatusEligible,scores={hesitant_active=0}] run attribute @s minecraft:attack_speed modifier remove hesitant_attack_speed

# # HOBBLED
# execute as @e[tag=StatusEligible,scores={hobbled_active=0}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_1
# execute as @e[tag=StatusEligible,scores={hobbled_active=0}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_1
# execute as @e[tag=StatusEligible,scores={hobbled_active=0}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_2
# execute as @e[tag=StatusEligible,scores={hobbled_active=0}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_2

# IMMOBILIZED
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:jump_strength modifier remove immobilized_jump_strength
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:movement_speed modifier remove immobilized_movement_speed
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:knockback_resistance modifier remove immobilized_knockback_resistance

# INCENDIARY - Should only be run with timer
scoreboard players set @a[scores={incendiary_timer=200..}] incendiary_timer 200
execute as @a[scores={incendiary_timer=1..}] if score @s incendiary_timer <= @s wet_timer run scoreboard players set @s incendiary_timer 0
execute as @a run attribute @s minecraft:burning_time modifier remove incendiary_burning_time
    # execute as @a[scores={incendiary_active=0}] run attribute @s minecraft:burning_time modifier remove incendiary_burning_time

# LIGHTWEIGHT
execute as @a[scores={lightweight_active=0}] run attribute @s minecraft:gravity modifier remove lightweight_gravity
execute as @a[scores={lightweight_active=0}] run attribute @s minecraft:fall_damage_multiplier modifier remove lightweight_fall_damage_multiplier
execute as @a[scores={lightweight_active=0}] run attribute @s minecraft:safe_fall_distance modifier remove lightweight_safe_fall_distance_1
execute as @a[scores={lightweight_active=0}] run attribute @s minecraft:safe_fall_distance modifier remove lightweight_safe_fall_distance_2
execute as @a[scores={lightweight_active=0}] run attribute @s minecraft:attack_knockback modifier remove lightweight_attack_knockback

# RECOVERING
execute as @a unless entity @s[scores={recover_amount=40..}] run scoreboard players add @s recover_amount 1

# SURGICAL
execute as @a[scores={surgical_active=0}] run attribute @s minecraft:entity_interaction_range modifier remove surgical_entity_interaction_range_1
execute as @a[scores={surgical_active=0}] run attribute @s minecraft:entity_interaction_range modifier remove surgical_entity_interaction_range_2
execute as @a[scores={surgical_active=0}] run attribute @s minecraft:attack_damage modifier remove surgical_attack_damage
execute as @a[scores={surgical_active=0}] run attribute @s minecraft:attack_speed modifier remove surgical_attack_speed

# TERRIFIED
execute as @a[scores={terrified_active=0}] run attribute @s minecraft:entity_interaction_range modifier remove terrified_entity_interaction_range
execute as @a[scores={terrified_active=0}] run attribute @s minecraft:block_interaction_range modifier remove terrified_block_interaction_range

# FRIGHTENING
scoreboard players set @a[scores={terrifying_timer=1..,terrified_timer=1..}] terrified_timer 0

# UNNERVED
execute as @a[scores={unnerved_active=0}] run attribute @s minecraft:movement_speed modifier remove unnerved_movement_speed
execute as @a[scores={unnerved_active=0}] run attribute @s minecraft:attack_speed modifier remove unnerved_attack_speed
execute as @a[scores={unnerved_active=0}] run attribute @s minecraft:block_break_speed modifier remove unnerved_block_break_speed

# UNNERVING
scoreboard players set @a[scores={unnerving_timer=1..,unnerved_timer=1..}] unnerved_timer 0

# VULNERABLE
execute as @a[scores={vulnerable_active=0}] run attribute @s minecraft:max_health modifier remove vulnerable_max_health

# WET - Should only be run with timer
# function ss_lib:fetch/in_water {s:"@a"}
scoreboard players set @a[scores={wet_timer=200..}] wet_timer 200
execute as @a[scores={wet_timer=1..}] if score @s wet_timer <= @s incendiary_timer run scoreboard players set @s wet_timer 0
scoreboard players set @a[scores={wet_timer=1..,Dimension=2}] wet_timer 0
scoreboard players add @a[scores={InWater=1..}] wet_timer 3
execute as @a[predicate=ss_lib:in_rain] unless entity @s[predicate=ss_lib:in_biome_cold] run scoreboard players add @s wet_timer 2
execute as @a run attribute @s minecraft:burning_time modifier remove wet_burning_time
    # execute as @a[scores={wet_active=0}] run attribute @s minecraft:burning_time modifier remove wet_burning_time