# timers
scoreboard players remove @a[scores={aggressive_timer=0..}] aggressive_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={bleeding_timer=0..}] bleeding_timer 1
scoreboard players remove @a[scores={bouncy_timer=0..}] bouncy_timer 1
scoreboard players remove @a[scores={disabled_timer=0..}] disabled_timer 1
scoreboard players remove @a[scores={disarmed_timer=0..}] disarmed_timer 1
scoreboard players remove @a[scores={disoriented_timer=0..}] disoriented_timer 1
scoreboard players remove @a[scores={encumbered_timer=0..}] encumbered_timer 1
scoreboard players remove @a[scores={enshrouded_timer=0..}] enshrouded_timer 1
scoreboard players remove @a[scores={fragile_timer=0..}] fragile_timer 1
scoreboard players remove @a[scores={frenzied_timer=0..}] frenzied_timer 1
scoreboard players remove @a[scores={frightened_timer=0..}] frightened_timer 1
scoreboard players remove @a[scores={frightening_timer=0..}] frightening_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={frozen_timer=0..}] frozen_timer 1
scoreboard players remove @a[scores={hesitant_timer=0..}] hesitant_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={hobbled_timer=0..}] hobbled_timer 1
scoreboard players remove @a[scores={incendiary_timer=0..}] incendiary_timer 1
scoreboard players remove @a[scores={recover_timer=0..}] recover_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={rooted_timer=0..}] rooted_timer 1
scoreboard players remove @a[scores={satiated_timer=0..}] satiated_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={shocked_timer=0..}] shocked_timer 1
scoreboard players remove @a[scores={surgical_timer=0..}] surgical_timer 1
scoreboard players remove @a[scores={terrified_timer=0..}] terrified_timer 1
scoreboard players remove @a[scores={terrifying_timer=0..}] terrifying_timer 1
scoreboard players remove @a[scores={tormented_timer=0..}] tormented_timer 1
scoreboard players remove @a[scores={unnerved_timer=0..}] unnerved_timer 1
scoreboard players remove @a[scores={unnerving_timer=0..}] unnerving_timer 1
scoreboard players remove @a[scores={vulnerable_timer=0..}] vulnerable_timer 1
scoreboard players remove @e[tag=StatusEligible,scores={webbed_timer=0..}] webbed_timer 1
scoreboard players remove @a[scores={wet_timer=0..}] wet_timer 1

# activity
scoreboard players remove @a[scores={alert_active=0..}] alert_active 1
scoreboard players remove @a[scores={aggressive_active=0..}] aggressive_active 1
scoreboard players remove @e[tag=StatusEligible,scores={bleeding_active=0..}] bleeding_active 1
scoreboard players remove @e[tag=StatusEligible,scores={bouncy_active=0..}] bouncy_active 1
scoreboard players remove @a[scores={disabled_active=0..}] disabled_active 1
scoreboard players remove @a[scores={disarmed_active=0..}] disarmed_active 1
scoreboard players remove @a[scores={disoriented_active=0..}] disoriented_active 1
scoreboard players remove @a[scores={encumbered_active=0..}] encumbered_active 1
scoreboard players remove @a[scores={enshrouded_active=0..}] enshrouded_active 1
scoreboard players remove @a[scores={fortified_active=0..}] fortified_active 1
scoreboard players remove @a[scores={feeble_active=0..}] feeble_active 1
scoreboard players remove @a[scores={fragile_active=0..}] fragile_active 1
scoreboard players remove @a[scores={frenzied_active=0..}] frenzied_active 1
scoreboard players remove @a[scores={frightened_active=0..}] frightened_active 1
scoreboard players remove @e[tag=StatusEligible,scores={frozen_active=0..}] frozen_active 1
scoreboard players remove @a[scores={hesitant_active=0..}] hesitant_active 1
scoreboard players remove @e[tag=StatusEligible,scores={hobbled_active=0..}] hobbled_active 1
scoreboard players remove @e[tag=StatusEligible,scores={immobilized_active=0..}] immobilized_active 1
    # scoreboard players remove @a[scores={incendiary_active=0..}] incendiary_active 1
scoreboard players remove @a[scores={lightweight_active=0..}] lightweight_active 1
scoreboard players remove @a[scores={recover_active=0..}] recover_active 1
scoreboard players remove @e[tag=StatusEligible,scores={rooted_active=0..}] rooted_active 1
scoreboard players remove @a[scores={surgical_active=0..}] surgical_active 1
scoreboard players remove @a[scores={satiated_active=0..}] satiated_active 1
scoreboard players remove @e[tag=StatusEligible,scores={shocked_active=0..}] shocked_active 1
scoreboard players remove @a[scores={terrified_active=0..}] terrified_active 1
scoreboard players remove @a[scores={tormented_active=0..}] tormented_active 1
scoreboard players remove @a[scores={unnerved_active=0..}] unnerved_active 1
scoreboard players remove @a[scores={vulnerable_active=0..}] vulnerable_active 1
scoreboard players remove @e[tag=StatusEligible,scores={webbed_active=0..}] webbed_active 1
    # scoreboard players set @a[scores={wet_active=1}] wet_active 0

tag @e[type=!player,tag=StatusEligible,scores={bleeding_active=-1,hobbled_active=-1,hesitant_active=-1,frozen_active=-1,rooted_active=-1,shocked_active=-1,webbed_active=-1}] remove StatusEligible

# aggressive
execute as @a[scores={aggressive_timer=0}] run attribute @s minecraft:attack_damage modifier remove aggressive_attack_damage
execute as @a[scores={aggressive_timer=0}] run attribute @s minecraft:attack_speed modifier remove aggressive_attack_speed

# bleeding
scoreboard players set @e[tag=StatusEligible,scores={bleeding_timer=-1,bleeding_damage=1..}] bleeding_damage 0
scoreboard players set @e[tag=StatusEligible,scores={bleeding_active=-1,bleeding_cooldown=1..}] bleeding_cooldown 0

# bouncy
execute as @a[scores={bouncy_timer=0}] run attribute @s minecraft:gravity modifier remove bouncy_gravity
execute as @a[scores={bouncy_timer=..0,OnGround=1}] run attribute @s minecraft:fall_damage_multiplier modifier remove bouncy_fall_damage_multiplier
execute as @a[scores={bouncy_timer=0}] run attribute @s minecraft:gravity modifier remove bouncy_bounce_gravity

# disarmed
execute as @a[scores={disarmed_timer=0}] run attribute @s minecraft:attack_speed modifier remove disarmed_attack_speed

# encumbered
execute as @a[scores={encumbered_timer=0}] run attribute @s minecraft:jump_strength modifier remove encumbered_jump_strength
execute as @a[scores={encumbered_timer=0}] run attribute @s minecraft:movement_speed modifier remove encumbered_movement_speed

execute as @a[scores={encumbered_active=0},predicate=ss_lib:is/sneaking] run attribute @s minecraft:jump_strength modifier remove encumbered_jump_strength

# feeble
scoreboard players set @e[scores={feeble_ineligible=1}] feeble_ineligible 0

execute as @a[scores={feeble_active=0},predicate=ss_lib:is/sneaking] run attribute @s minecraft:jump_strength modifier remove feeble_jump_strength

# fragile
execute as @a[scores={fragile_timer=0}] run attribute @s minecraft:armor modifier remove fragile_armor
execute as @a[scores={fragile_timer=0}] run attribute @s minecraft:armor_toughness modifier remove fragile_armor_toughness

# frenzied
scoreboard players set @a[scores={frenzied_timer=0,frenzied_damage=1..}] frenzied_damage 0

# frightened
execute as @a[scores={frightened_timer=0}] run attribute @s minecraft:armor modifier remove frightened_armor

# hesitant
execute as @e[tag=StatusEligible,scores={hesitant_timer=0}] run attribute @s minecraft:attack_damage modifier remove hesitant_attack_damage
execute as @e[tag=StatusEligible,scores={hesitant_timer=0}] run attribute @s minecraft:attack_speed modifier remove hesitant_attack_speed

# # hobbled
# scoreboard players set @e[tag=StatusEligible,scores={hobbled_amount=100..}] hobbled_amount 100
# scoreboard players remove @e[tag=StatusEligible,scores={hobbled_amount=0..}] hobbled_amount 1

# execute as @e[tag=StatusEligible,scores={hobbled_amount=0}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_1
# execute as @e[tag=StatusEligible,scores={hobbled_amount=0}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_1

# execute as @e[tag=StatusEligible,scores={hobbled_amount=..40}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_2
# execute as @e[tag=StatusEligible,scores={hobbled_amount=..40}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_2

# execute as @e[tag=StatusEligible,scores={hobbled_timer=0}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_1
# execute as @e[tag=StatusEligible,scores={hobbled_timer=0}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_1
# execute as @e[tag=StatusEligible,scores={hobbled_timer=0}] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_2
# execute as @e[tag=StatusEligible,scores={hobbled_timer=0}] run attribute @s minecraft:movement_speed modifier remove hobbled_movement_speed_2

# execute as @e[tag=StatusEligible,scores={hobbled_active=0},predicate=ss_lib:is/sneaking] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_1
# execute as @e[tag=StatusEligible,scores={hobbled_active=0},predicate=ss_lib:is/sneaking] run attribute @s minecraft:jump_strength modifier remove hobbled_jump_strength_2

# incendiary
execute as @a[scores={incendiary_timer=0}] run attribute @s minecraft:burning_time modifier remove incendiary_burning_time

# recovering
scoreboard players set @a[scores={recover_amount=40..}] recover_amount 0

# surgical
scoreboard players remove @a[scores={surgical_hit_timer=0..}] surgical_hit_timer 1

execute as @a[scores={surgical_timer=0}] run attribute @s minecraft:entity_interaction_range modifier remove surgical_entity_interaction_range_1
execute as @a[scores={surgical_timer=0}] run attribute @s minecraft:entity_interaction_range modifier remove surgical_entity_interaction_range_2
execute as @a[scores={surgical_timer=0}] run attribute @s minecraft:attack_damage modifier remove surgical_attack_damage
execute as @a[scores={surgical_timer=0}] run attribute @s minecraft:attack_speed modifier remove surgical_attack_speed

# terrified
execute as @a[scores={terrified_timer=0}] run attribute @s minecraft:entity_interaction_range modifier remove terrified_entity_interaction_range

# unnerved
execute as @a[scores={unnerved_timer=0}] run attribute @s minecraft:movement_speed modifier remove unnerved_movement_speed
execute as @a[scores={unnerved_timer=0}] run attribute @s minecraft:attack_speed modifier remove unnerved_attack_speed
execute as @a[scores={unnerved_timer=0}] run attribute @s minecraft:block_break_speed modifier remove unnerved_block_break_speed

# vulnerable
execute as @a[scores={vulnerable_timer=0}] run attribute @s minecraft:max_health modifier remove vulnerable_max_health

# wet
execute as @a[scores={wet_timer=0}] run attribute @s minecraft:burning_time modifier remove wet_burning_time