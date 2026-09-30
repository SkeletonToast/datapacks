# 1: explorer
# 2: fighter
# 3: homesteader

execute as @a[scores={Character=1}] run scoreboard players operation @s of_job_1 = @s of_job
execute as @a[scores={Character=2}] run scoreboard players operation @s of_job_2 = @s of_job
execute as @a[scores={Character=3}] run scoreboard players operation @s of_job_3 = @s of_job

# jobs
scoreboard players set @a nomad 0
scoreboard players set @a pioneer 0
scoreboard players set @a inquisitor 0
scoreboard players set @a hunter 0
scoreboard players set @a conscript 0
scoreboard players set @a praetor 0
scoreboard players set @a rancher 0
scoreboard players set @a laborer 0
scoreboard players set @a scholar 0

scoreboard players set @a[scores={of_origin=1,of_job=1}] nomad 1
scoreboard players set @a[scores={of_origin=2,of_job=1}] pioneer 1
scoreboard players set @a[scores={of_origin=3,of_job=1}] inquisitor 1
scoreboard players set @a[scores={of_origin=1,of_job=2}] hunter 1
scoreboard players set @a[scores={of_origin=2,of_job=2}] conscript 1
scoreboard players set @a[scores={of_origin=3,of_job=2}] praetor 1
scoreboard players set @a[scores={of_origin=1,of_job=3}] rancher 1
scoreboard players set @a[scores={of_origin=2,of_job=3}] laborer 1
scoreboard players set @a[scores={of_origin=3,of_job=3}] scholar 1

# angels
scoreboard players set @a[scores={of_origin=4,of_job=1}] nomad 1
scoreboard players set @a[scores={of_origin=4,of_job=1}] pioneer 1
scoreboard players set @a[scores={of_origin=4,of_job=1}] inquisitor 1
scoreboard players set @a[scores={of_origin=4,of_job=2}] hunter 1
scoreboard players set @a[scores={of_origin=4,of_job=2}] conscript 1
scoreboard players set @a[scores={of_origin=4,of_job=2}] praetor 1
scoreboard players set @a[scores={of_origin=4,of_job=3}] rancher 1
scoreboard players set @a[scores={of_origin=4,of_job=3}] laborer 1
scoreboard players set @a[scores={of_origin=4,of_job=3}] scholar 1

# EXPLORERS
    execute as @a[scores={nomad=1}] at @s run function of_characters:explorer/main
    execute as @a[scores={pioneer=1}] at @s run function of_characters:explorer/main
    execute as @a[scores={inquisitor=1}] at @s run function of_characters:explorer/main

# FIGHTERS
    execute as @a[scores={hunter=1}] at @s run function of_characters:fighter/main
    execute as @a[scores={conscript=1}] at @s run function of_characters:fighter/main
    execute as @a[scores={praetor=1}] at @s run function of_characters:fighter/main
    execute as @a unless entity @s[scores={of_job=2}] run attribute @s attack_damage modifier remove fighter_retreat_entity_interaction_range
    execute as @a unless entity @s[scores={of_job=2}] run attribute @s armor modifier remove fighter_retreat_attack_damage
    execute as @a unless entity @s[scores={of_job=2}] run attribute @s movement_speed modifier remove fighter_retreat_attack_knockback
    execute as @a unless entity @s[scores={of_job=2}] run attribute @s armor modifier remove fighter_approach_attack_damage
    execute as @a unless entity @s[scores={of_job=2}] run attribute @s movement_speed modifier remove fighter_approach_attack_knockback
    # execute as @a unless entity @s[scores={of_job=2}] run attribute @s gravity modifier remove fighter_pogo_gravity
    # execute as @a unless entity @s[scores={of_job=2}] run attribute @s safe_fall_distance modifier remove fighter_pogo_safe_fall_distance
    # execute as @a unless entity @s[scores={of_job=2}] run attribute @s entity_interaction_range modifier remove fighter_pogo_entity_interaction_range

    # conscript
    execute as @a unless entity @s[scores={of_origin=2,of_job=2}] run attribute @s attack_damage modifier remove conscript_camaraderie_attack_damage
    execute as @a unless entity @s[scores={of_origin=2,of_job=2}] run attribute @s knockback_resistance modifier remove conscript_knockback_resistance
    execute as @a unless entity @s[scores={of_origin=2,of_job=2}] run attribute @s armor modifier remove conscript_camaraderie_armor
    execute as @a unless entity @s[scores={of_origin=2,of_job=2}] run attribute @s movement_speed modifier remove conscript_shielding_movement_speed
    execute as @a[scores={SneakTime=1..}] run attribute @s movement_speed modifier remove conscript_shielding_movement_speed
    execute as @a[scores={UsingShield=0}] run attribute @s movement_speed modifier remove conscript_shielding_movement_speed

    # praetor
    execute as @a unless entity @s[scores={of_origin=3,of_job=2}] run attribute @s entity_interaction_range modifier remove praetor_prod_entity_interaction_range
    execute as @a unless entity @s[scores={of_origin=3,of_job=2}] run attribute @s attack_damage modifier remove praetor_prod_attack_damage
    execute as @a unless entity @s[scores={of_origin=3,of_job=2}] run attribute @s entity_interaction_range modifier remove praetor_lunge_entity_interaction_range
    execute as @a unless entity @s[scores={of_origin=3,of_job=2}] run attribute @s attack_knockback modifier remove praetor_lunge_attack_knockback
    execute as @a unless entity @s[scores={of_origin=3,of_job=2}] run attribute @s gravity modifier remove praetor_reposition_gravity
    scoreboard players remove @a[scores={praetor_combo=1..}] praetor_combo 1
    scoreboard players set @a[scores={praetor_combo=..-1}] praetor_combo 0
    scoreboard players set @a[scores={praetor_combo=201..}] praetor_combo 200

# HOMESTEADERS
    execute as @a[scores={rancher=1}] at @s run function of_characters:homesteader/main
    execute as @a[scores={laborer=1}] at @s run function of_characters:homesteader/main
    execute as @a[scores={scholar=1}] at @s run function of_characters:homesteader/main
    execute as @a unless entity @s[scores={of_job=3}] run attribute @s block_interaction_range modifier remove homesteader_block_interaction_range

    # laborer
    execute as @a unless entity @s[scores={of_origin=2,of_job=3}] run attribute @s block_break_speed modifier remove laborer_block_break_speed
    execute as @a unless entity @s[scores={of_origin=2,of_job=3}] run attribute @s block_interaction_range modifier remove laborer_block_interaction_range

    scoreboard players set @a laborer_mine_stone 0
    scoreboard players set @a laborer_mine_deepslate 0
    scoreboard players set @a laborer_mine_ore 0
    scoreboard players set @a laborer_mine_nether_quartz 0
    scoreboard players set @a laborer_mine_nether_gold 0
    scoreboard players set @a laborer_mine_coal 0
    scoreboard players set @a laborer_mine_diamond 0
    scoreboard players set @a laborer_mine_emerald 0
    scoreboard players set @a laborer_mine_iron 0
    scoreboard players set @a laborer_mine_gold 0
    scoreboard players set @a laborer_mine_copper 0
    scoreboard players set @a laborer_mine_redstone 0
    scoreboard players set @a laborer_mine_lapis 0
    scoreboard players set @a laborer_mine_deepslate_coal 0
    scoreboard players set @a laborer_mine_deepslate_diamond 0
    scoreboard players set @a laborer_mine_deepslate_emerald 0
    scoreboard players set @a laborer_mine_deepslate_iron 0
    scoreboard players set @a laborer_mine_deepslate_gold 0
    scoreboard players set @a laborer_mine_deepslate_copper 0
    scoreboard players set @a laborer_mine_deepslate_redstone 0
    scoreboard players set @a laborer_mine_deepslate_lapis 0