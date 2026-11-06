execute at @s[tag=BoundAnchor] if entity @a[distance=..60,scores={species=002}] align y run particle composter ~ ~0.5 ~
execute at @s[tag=!BoundAnchor] if entity @a[distance=..60,scores={species=002}] align y run particle electric_spark ~ ~0.5 ~
# execute if entity @a[distance=..10] positioned ~ ~0.2 ~ run function ss_particles:enchant_particle_ring

# anchor bound tag assignment
# $execute as @a[scores={species=002},distance=..$(distance),tag=!AnchorEligible] unless entity @s[scores={species002-03=1..}] at @s run playsound minecraft:entity.arrow.hit_player master @s
# $tag @a[scores={species=002},distance=..$(distance)] add AnchorEligible
scoreboard players set @a[scores={species=002,DamageDealt=1..}] species002-03 100
tag @a[scores={species002-03=1..}] remove AnchorEligible
scoreboard players remove @a[scores={species002-03=1..}] species002-03 1

# changing to interactions
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] run tag @s add AnchorEligibility
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 0.5 1
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] run title @s actionbar [{"text":"Anchor enabled.","color":"green"}]
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] positioned ~ ~-0.2 ~ run function ss_particles:enchant_particle_ring
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] positioned ~ ~0.3 ~ run function ss_particles:enchant_particle_ring
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=!BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002}] as @n[tag=BuildingAnchor] run tag @s add BoundAnchor

execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 0.5 0.7
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] run title @s actionbar [{"text":"Anchor disabled.","color":"red"}]
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] positioned ~ ~-0.2 ~ run function ss_particles:enchant_particle_ring
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] positioned ~ ~0.3 ~ run function ss_particles:enchant_particle_ring
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] run tag @s remove AnchorEligible
execute as @e[type=minecraft:interaction,tag=BuildingAnchor,tag=BoundAnchor] at @s if data entity @s interaction on target if entity @s[scores={species=002},tag=!AnchorEligibility] as @n[tag=BuildingAnchor] run tag @s remove BoundAnchor
execute as @e[type=minecraft:interaction,tag=BuildingAnchor] at @s if data entity @s interaction run data remove entity @s interaction
tag @a[tag=AnchorEligibility] remove AnchorEligibility

# flight
# execute as @a[tag=AnchorBound] run attribute @s minecraft:generic.gravity modifier remove species002_anchor_gravity
# effect give @a[tag=AnchorEligible] slow_falling 1 1 true
# execute as @a[tag=AnchorBound,scores={OnGround=0}] unless entity @s[x_rotation=90] unless entity @s[x_rotation=270] run attribute @s minecraft:generic.gravity modifier add species002_anchor_gravity -1 add_multiplied_total
# effect give @a[tag=AnchorBound,x_rotation=270] levitation 1 2 true
execute as @a[tag=AnchorEligible] run attribute @s minecraft:generic.gravity modifier add species002_anchor_gravity -0.9 add_multiplied_total
execute as @a[tag=AnchorEligible] run attribute @s minecraft:player.block_interaction_range modifier add species002_anchor_block_reach 10 add_value
execute as @a[tag=AnchorEligible] run attribute @s minecraft:generic.step_height modifier add species002_anchor_step_height 1 add_multiplied_base
scoreboard players set @a[tag=AnchorEligible] ability001 1

# other effects
effect give @a[tag=AnchorEligible,scores={InWater=2}] conduit_power 1 255 true
effect give @a[tag=AnchorEligible,predicate=ss_library:holding_nonsword_tool] haste 1 1 true

$execute as @a[scores={species=002},tag=AnchorEligible] at @s unless entity @e[tag=BuildingAnchor,distance=..$(distance)] run title @s actionbar [{"text":"You're almost out of Anchor range. Crouch to return.","color":"red"}]
$execute as @a[scores={species=002,SingleSneakTime=1},tag=AnchorEligible] at @s unless entity @e[tag=BuildingAnchor,distance=..$(distance)] run particle explosion ~ ~1 ~
$execute as @a[scores={species=002,SingleSneakTime=1},tag=AnchorEligible] at @s unless entity @e[tag=BuildingAnchor,distance=..$(distance)] at @n[tag=BuildingAnchor,distance=..25] run particle explosion ~ ~1 ~
$execute as @a[scores={species=002,SingleSneakTime=1},tag=AnchorEligible] at @s unless entity @e[tag=BuildingAnchor,distance=..$(distance)] run tp @s @n[tag=BuildingAnchor,distance=..25]

tag @e[type=item,scores={Age=60..},distance=..0.5,tag=!AnchorItemTeleported] add AnchorItemTeleported
$tp @e[type=item,scores={Age=60..},distance=..$(distance),tag=!AnchorItemTeleported] @s
$execute as @e[type=item,scores={Age=60..},distance=..$(distance),tag=!AnchorItemTeleported] run data merge entity @s {NoGravity:1b}
$execute as @e[type=item,scores={Age=60..},distance=..$(distance),tag=!AnchorItemTeleported] run data merge entity @s {Motion:[0.0,0.0,0.0]}

# stacking prevention
execute as @s[scores={Age=2..}] at @e[tag=BuildingAnchor,distance=0,scores={Age=1}] run function ss_species:s_002f_summonanchoritem {"count":"1"}
execute as @s[scores={Age=2..}] run kill @e[tag=BuildingAnchor,distance=0,scores={Age=1}]