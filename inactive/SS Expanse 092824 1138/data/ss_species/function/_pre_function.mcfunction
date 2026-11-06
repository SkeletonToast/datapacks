scoreboard players set @a[scores={species=013}] Ghost 1
scoreboard players set @a[scores={species=014}] Ghost 1
scoreboard players set @a[scores={species=017}] species017-00 2
scoreboard players set @a[scores={species017-00=1..},tag=HasChangelingStone] species017-00 2

tag @a[scores={species=004}] add Soulless
tag @a[scores={species=013}] add Soulless
tag @a[scores={species=014}] add Soulless
tag @a[scores={species017-00=1..}] add Soulless

execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.attack_damage modifier remove species001_evolution_attack_damage
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.knockback_resistance modifier remove species001_evolution_knockback_resistance
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.movement_speed modifier remove species001_evolution_movement_speed
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.max_health modifier remove species001_evolution_max_health
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.armor modifier remove species001_helmet_armor_bonus
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.armor modifier remove species001_chestplate_armor_bonus
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.armor modifier remove species001_leggings_armor_bonus
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.armor modifier remove species001_boots_armor_bonus
execute as @a unless entity @s[scores={species=001}] run attribute @s minecraft:generic.attack_speed modifier remove species001_unarmed_attack_speed

execute as @a[tag=!AnchorEligible] run attribute @s minecraft:generic.gravity modifier remove species002_anchor_gravity
execute as @a[tag=!AnchorEligible] run attribute @s minecraft:player.block_interaction_range modifier remove species002_anchor_block_reach
execute as @a[tag=!AnchorEligible] run attribute @s minecraft:generic.step_height modifier remove species002_anchor_step_height
execute as @a unless entity @s[scores={species=002}] run attribute @s minecraft:generic.gravity modifier remove species002_anchor_gravity
execute as @a unless entity @s[scores={species=002}] run attribute @s minecraft:player.block_interaction_range modifier remove species002_anchor_block_reach
execute as @a unless entity @s[scores={species=002}] run attribute @s minecraft:generic.step_height modifier remove species002_anchor_step_height

execute as @a unless entity @s[scores={species=004}] run attribute @s minecraft:generic.max_health modifier remove species004_max_health
execute as @a unless entity @s[scores={species=004}] run attribute @s minecraft:generic.attack_damage modifier remove species004_attack_damage
execute as @a unless entity @s[scores={species=004}] run attribute @s minecraft:generic.movement_speed modifier remove species004_movement_speed
execute as @a[team=Shadowbringers] unless entity @s[scores={species=004}] run team leave @s

execute as @a unless entity @s[scores={species=005}] run attribute @s minecraft:generic.movement_speed modifier remove ability004_movement_speed

execute as @a unless entity @s[scores={species=006}] run attribute @s minecraft:generic.armor modifier remove species006_hunker_armor
execute as @a unless entity @s[scores={species=006}] run attribute @s minecraft:generic.armor_toughness modifier remove species006_hunker_armor_toughness
execute as @a unless entity @s[scores={species=006}] run attribute @s minecraft:generic.movement_speed modifier remove species006_hunker_movement_speed
execute as @a unless entity @s[scores={species=006}] run attribute @s minecraft:generic.jump_strength modifier remove species006_hunker_jump_height

execute as @a[team=Spiders] unless entity @s[scores={species=007}] run team leave @s
execute unless entity @s[scores={species=007}] run attribute @s minecraft:generic.gravity modifier remove species007_in_cobweb_gravity
execute unless entity @s[scores={species=007}] run attribute @s minecraft:generic.gravity modifier remove species007_swing_gravity
execute unless entity @s[scores={species=007}] run attribute @s minecraft:generic.safe_fall_distance modifier remove species007_swing_safe_fall_distance

# execute as @a unless entity @s[scores={species=007}] run scoreboard players set @s species007-01 0
# scoreboard players set @a[scores={species007-03=1..}] species007-03 0

execute as @a unless entity @s[scores={species=008}] run attribute @s minecraft:player.mining_efficiency modifier remove species008_mining_efficiency_1

execute as @a[team=Ghosts] unless entity @s[scores={Ghost=1..}] run team leave @s

execute as @a unless entity @s[scores={Ghost=0..}] run attribute @s minecraft:generic.gravity modifier remove ghost_gravity
execute as @a unless entity @s[scores={Ghost=0..}] run scoreboard players set @s Ghost -1
# execute as @a[scores={PlayerDeaths=7..},tag=!Soulless] run scoreboard players set @s Ghost 2
    # disabled specifically for crow's keep server

execute as @a unless entity @s[scores={species=014}] run scoreboard players set @s species014-01 0
execute as @a unless entity @s[scores={species=014}] run scoreboard players set @s species014-03 20
execute as @a unless entity @s[scores={species=014}] run attribute @s minecraft:generic.gravity modifier remove f40f36f1-a2d5-4207-b20f-08b783e64cba
execute as @a unless entity @s[scores={species=014}] run attribute @s minecraft:player.entity_interaction_range modifier remove species014_attack_range
execute as @a unless entity @s[scores={species=014}] run attribute @s minecraft:player.entity_interaction_range modifier remove species014_attack_range

execute as @a unless entity @s[scores={species=015}] run attribute @s minecraft:generic.jump_strength modifier remove species015_jump_height

execute as @a store result score @s species017-01 run clear @s echo_shard[custom_data={quick_destroy:true,Tags:["species017"]}] 0
execute as @a[scores={species017-01=2..}] run function ss_species:s_017f_cleartransformshard
execute as @a unless entity @s[scores={species017-00=1..}] run clear @s echo_shard[custom_data={quick_destroy:true,Tags:["species017"]}]
execute as @a unless entity @s[scores={species017-00=1..}] run attribute @s minecraft:generic.scale modifier remove species017_scale

execute as @a unless entity @s[scores={species=019}] run scoreboard players set @s species019-01 0
execute as @a unless entity @s[scores={species=019}] run scoreboard players set @s species019-02 0

execute as @a unless entity @s[scores={species=023}] run attribute @s minecraft:generic.attack_damage modifier remove 7b2e7d55-9216-46da-959b-f71372edcf8e
execute as @a unless entity @s[scores={species=023}] run attribute @s minecraft:generic.attack_speed modifier remove 5bb360c3-b6d3-4a4d-9047-dc125f962975
execute as @a unless entity @s[scores={species=023}] run attribute @s minecraft:generic.movement_speed modifier remove 5f0078cc-fa0f-4f29-a3f1-5da7b96a3727

# avians
execute as @a[predicate=ss_species:holding_seeds_mainhand] unless entity @s[scores={species=025}] run item modify entity @s weapon.mainhand ss_species:inedible
execute as @a[predicate=ss_species:holding_seeds_offhand] unless entity @s[scores={species=025}] run item modify entity @s weapon.offhand ss_species:inedible
execute as @a unless entity @s[scores={species=025}] run scoreboard players set @s species025-03 0
execute as @a unless entity @s[scores={species=025}] run clear @s firework_rocket[custom_data={Tags:["species025"]}]
scoreboard players set @a[scores={OnGround=1}] species025-08 0

execute as @a unless entity @s[scores={species=025}] run attribute @s minecraft:generic.gravity modifier remove species025_flight_gravity
execute as @a unless entity @s[scores={species=025}] run attribute @s minecraft:generic.movement_speed modifier remove species025_boost_visual_speed
execute as @a unless entity @s[scores={species=025}] run attribute @s minecraft:player.entity_interaction_range modifier remove species025_midair_entity_interaction_range
execute as @a[scores={FallFlying=0}] run attribute @s minecraft:player.entity_interaction_range modifier remove species025_midair_entity_interaction_range
execute as @a[predicate=ss_species:flying_very_quickly] run attribute @s minecraft:player.entity_interaction_range modifier remove species025_midair_entity_interaction_range

# haligsundri
execute as @a unless entity @s[scores={species=026}] run attribute @s minecraft:generic.armor modifier remove species026_armor_bonus
execute as @a unless entity @s[scores={species=026}] run attribute @s minecraft:player.entity_interaction_range modifier remove species026_golden_weapon_reach
execute as @a unless entity @s[scores={species=026}] run attribute @s minecraft:player.sweeping_damage_ratio modifier remove species026_sweeping_damage

# guidebooks/Species Stones
    # execute as @a[scores={SoftTimeSinceDeath=2}] run function ss_species:f_speciesstone_give
    # execute as @a[scores={SoftRestOrRespawn=2,SoftTimeSinceDeath=3..}] run function ss_species:f_speciesstone_give
    execute as @a[scores={SingleSneakTime=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["speciesstone"]}}}}] run function ss_species:f_speciesstone_tellraw
    # execute as @a[scores={GuidebookTimer=1}] run function ss_species:speciesguidebooks