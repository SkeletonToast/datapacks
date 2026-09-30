execute as @a[scores={addam=1..}] run scoreboard players remove @s of_encumbrance 5
execute as @a[scores={addam=1..}] run scoreboard players add @s of_bravery_max 1000
execute as @a[scores={addam=2..}] run scoreboard players remove @s of_encumbrance 5
execute as @a[scores={addam=2..}] run scoreboard players add @s of_bravery_max 500

execute as @a[scores={aentos=1..}] run attribute @s minecraft:armor modifier add aentos_armor 4 add_value
execute as @a[scores={aentos=2..}] run attribute @s minecraft:armor modifier add aentos_armor_2 2 add_value
execute as @a[scores={aentos=0}] run attribute @s minecraft:armor modifier remove aentos_armor
execute as @a[scores={aentos=..1}] run attribute @s minecraft:armor modifier remove aentos_armor_2

effect give @a[scores={berethos=1..,InWater=1..}] minecraft:conduit_power 1 0 true
effect give @a[scores={berethos=2..,InWater=1..}] minecraft:resistance 1 0 true

execute as @a[scores={bovari=1..}] run attribute @s minecraft:movement_speed modifier add bovari_movement_speed 0.20 add_multiplied_base
execute as @a[scores={bovari=2..}] run attribute @s minecraft:movement_speed modifier add bovari_movement_speed_2 0.20 add_multiplied_base
execute as @a[scores={bovari=0}] run attribute @s minecraft:movement_speed modifier remove bovari_movement_speed
execute as @a[scores={bovari=..1}] run attribute @s minecraft:movement_speed modifier remove bovari_movement_speed_2

execute as @a[scores={caine=1..}] run attribute @s minecraft:attack_damage modifier add caine_attack_damage 1.00 add_value
execute as @a[scores={caine=2..}] run attribute @s minecraft:attack_damage modifier add caine_attack_damage_2 1.00 add_value
execute as @a[scores={caine=0}] run attribute @s minecraft:attack_damage modifier remove caine_attack_damage
execute as @a[scores={caine=..1}] run attribute @s minecraft:attack_damage modifier remove caine_attack_damage_2

execute as @a[scores={cerunnos=1..}] run attribute @s minecraft:entity_interaction_range modifier add cerunnos_entity_interaction_range 0.50 add_value
execute as @a[scores={cerunnos=2..}] run attribute @s minecraft:block_interaction_range modifier add cerunnos_block_interaction_range 0.50 add_value
execute as @a[scores={cerunnos=0}] run attribute @s minecraft:entity_interaction_range modifier remove cerunnos_entity_interaction_range
execute as @a[scores={cerunnos=..1}] run attribute @s minecraft:block_interaction_range modifier remove cerunnos_block_interaction_range

execute as @a[scores={fenris=1..}] run attribute @s minecraft:attack_speed modifier add fenris_attack_speed 0.20 add_value
execute as @a[scores={fenris=2..}] run attribute @s minecraft:attack_speed modifier add fenris_attack_speed_2 0.10 add_value
execute as @a[scores={fenris=0}] run attribute @s minecraft:attack_speed modifier remove fenris_attack_speed
execute as @a[scores={fenris=..1}] run attribute @s minecraft:attack_speed modifier remove fenris_attack_speed_2

execute as @a[scores={ornithal=1..}] run attribute @s minecraft:gravity modifier add ornithal_gravity -0.02 add_value
execute as @a[scores={ornithal=1..}] run attribute @s minecraft:jump_strength modifier add ornithal_jump_strength 0.50 add_multiplied_base
execute as @a[scores={ornithal=0}] run attribute @s minecraft:gravity modifier remove ornithal_gravity
execute as @a[scores={ornithal=..1}] run attribute @s minecraft:jump_strength modifier remove ornithal_jump_strength

execute as @a[scores={ramileth=1..}] run attribute @s minecraft:block_interaction_range modifier add ramileth_block_interaction_range 1.00 add_value
execute as @a[scores={ramileth=2..}] run attribute @s minecraft:entity_interaction_range modifier add ramileth_entity_interaction_range 0.30 add_value
execute as @a[scores={ramileth=0}] run attribute @s minecraft:block_interaction_range modifier remove ramileth_block_interaction_range
execute as @a[scores={ramileth=..1}] run attribute @s minecraft:entity_interaction_range modifier remove ramileth_entity_interaction_range

execute as @a[scores={paelus=1..}] run attribute @s minecraft:block_break_speed modifier add paelus_block_break_speed 0.50 add_value
execute as @a[scores={paelus=2..}] run attribute @s minecraft:block_break_speed modifier add paelus_block_break_speed_2 0.50 add_value
execute as @a[scores={paelus=0}] run attribute @s minecraft:block_break_speed modifier remove paelus_block_break_speed
execute as @a[scores={paelus=..1}] run attribute @s minecraft:block_break_speed modifier remove paelus_block_break_speed_2

execute as @a[scores={pelagi=1..}] run scoreboard players operation @s generic_a = @s pelagi
    execute as @a[scores={pelagi=1..}] run scoreboard players operation @s generic_a *= @s 10
    execute as @a[scores={pelagi=1..}] run scoreboard players add @s generic_a 5
    execute as @a[scores={pelagi=1..}] run scoreboard players operation @s of_heat_resistance += @s generic_a
    execute as @a[scores={pelagi=1..}] run scoreboard players operation @s of_cold_resistance += @s generic_a

execute as @a[scores={thallas=1..}] run attribute @s minecraft:water_movement_efficiency modifier add thallas_water_movement_efficiency 1.00 add_value
effect give @a[scores={thallas=2..,InWater=1..},predicate=ss_lib:is_swimming] dolphins_grace 1 4 true
execute as @a[scores={thallas=0}] run attribute @s minecraft:water_movement_efficiency modifier remove thallas_water_movement_efficiency

# temp
    execute as @a run attribute @s minecraft:max_health modifier remove angel_max_health
    execute as @a run attribute @s minecraft:max_health modifier remove angel_max_health_2

scoreboard players set @a blood 1
scoreboard players set @a[scores={aentos=1..}] blood 2
scoreboard players set @a[scores={berethos=1..}] blood 2
scoreboard players set @a[scores={bovari=1..}] blood 2
scoreboard players set @a[scores={caine=1..}] blood 2
scoreboard players set @a[scores={cerunnos=1..}] blood 2
scoreboard players set @a[scores={fenris=1..}] blood 2
scoreboard players set @a[scores={ornithal=1..}] blood 2
scoreboard players set @a[scores={ramileth=1..}] blood 2
scoreboard players set @a[scores={paelus=1..}] blood 2
scoreboard players set @a[scores={pelagi=1..}] blood 2
scoreboard players set @a[scores={thallas=1..}] blood 2
scoreboard players set @a[scores={luthis=1..}] blood 3
scoreboard players set @a[scores={sothis=1..}] blood 3

execute as @a unless entity @s[scores={addam=..0}] run scoreboard players set @s addam 0
execute as @a unless entity @s[scores={aentos=..0}] run scoreboard players set @s aentos 0
execute as @a unless entity @s[scores={berethos=..0}] run scoreboard players set @s berethos 0
execute as @a unless entity @s[scores={bovari=..0}] run scoreboard players set @s bovari 0
execute as @a unless entity @s[scores={caine=..0}] run scoreboard players set @s caine 0
execute as @a unless entity @s[scores={cerunnos=..0}] run scoreboard players set @s cerunnos 0
execute as @a unless entity @s[scores={fenris=..0}] run scoreboard players set @s fenris 0
execute as @a unless entity @s[scores={ornithal=..0}] run scoreboard players set @s ornithal 0
execute as @a unless entity @s[scores={ramileth=..0}] run scoreboard players set @s ramileth 0
execute as @a unless entity @s[scores={paelus=..0}] run scoreboard players set @s paelus 0
execute as @a unless entity @s[scores={pelagi=..0}] run scoreboard players set @s pelagi 0
execute as @a unless entity @s[scores={thallas=..0}] run scoreboard players set @s thallas 0
execute as @a unless entity @s[scores={luthis=..0}] run scoreboard players set @s luthis 0
execute as @a unless entity @s[scores={sothis=..0}] run scoreboard players set @s sothis 0

execute as @a[scores={blood=3}] if predicate ss_lib:is_on_fire run function ss_statuses:incendiary
execute as @a[scores={blood=3}] run attribute @s minecraft:max_health modifier add angel_max_health 1.00 add_multiplied_base
tag @a[scores={blood=3}] add sensitive_to_smite
execute as @a unless entity @s[scores={blood=3}] run attribute @s minecraft:max_health modifier remove angel_max_health
execute as @a[tag=InSanctuaryAbsorption,scores={blood=3,Food=20}] if score @s Health >= @s BaseMaxHealth run function oakfall:in_sanctuary_absorption_apply
# note that luthis and sothis also have increased stats, see of_characters:stats/bloodline_stats function