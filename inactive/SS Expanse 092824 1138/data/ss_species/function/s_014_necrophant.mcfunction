scoreboard players set @a[scores={species=014,Food=18..}] ability004 1
# scoreboard players set @a[scores={species=014,species014-04=1..,OnGround=1}] species014-04 0
tag @a[scores={species=014}] add UnlockedParrying
scoreboard players set @a[scores={species=014}] ParryPenalty -30

# necrophant diseligibility
scoreboard players set @a[scores={species=014,species014-01=1..}] species014-00 600
scoreboard players remove @a[scores={species=014,species014-00=1..}] species014-00 1
scoreboard players remove @a[scores={species=014,species014-00=1..,WeaponWeight=0}] species014-00 1
# tag @s remove NecrophantEligible
scoreboard players set @a[scores={species=014,Food=..6,species014-00=601..}] species014-00 200
scoreboard players set @a[scores={species=014,Food=..0,species014-00=601..}] species014-00 0
scoreboard players set @a[scores={species=014,species014-00=1..,Food=19..}] recover_timer 1

# Ghost Monarch
scoreboard players set @a[scores={species=014,species014-05=1..}] species014-05 0
execute as @a[scores={species=014}] run scoreboard players add @a[scores={species=014}] species014-05 1
scoreboard players add @a[scores={species=014,PlayerKilled=1..}] species014-06 1
tag @a[tag=GhostMonarch] remove GhostMonarch
execute as @a[scores={species=014,species014-05=5..}] at @s as @a[scores={species=014}] if score @s species014-06 > @p[scores={species=014},distance=0] species014-06 run scoreboard players operation @a generic_a = @s species014-06
execute as @a[scores={species=014,species014-05=5..}] if score @s species014-06 >= @s species014-05 if score @s species014-06 = @s generic_a run tag @s add GhostMonarch
scoreboard players set @a[tag=GhostMonarch] species014-00 600

# ghost skin
execute as @a[scores={species=014,species014-00=1..}] run attribute @s minecraft:generic.gravity modifier remove ghost_gravity

execute as @a[scores={species=014,species014-00=1..,Food=17..}] run effect give @s strength 1 1 true
execute as @a[scores={species=014,species014-00=1..,Food=17..},tag=Armorless] run effect give @s haste 1 1 true
execute as @a[scores={species=014,species014-00=1..,Food=17..},tag=Armorless] run effect give @s speed 1 1 true
execute as @a[scores={species=014,species014-00=1..},tag=Armorless] run effect give @s resistance 1 3 true

execute as @a[scores={species=014,species014-00=0}] run attribute @s minecraft:player.entity_interaction_range modifier remove species014_attack_range
execute as @a[scores={species=014,species014-00=1..,Food=..17}] run attribute @s minecraft:player.entity_interaction_range modifier remove species014_attack_range
execute as @a[scores={species=014,species014-00=1..,Food=17..}] run attribute @s minecraft:player.entity_interaction_range modifier add species014_attack_range 1.0 add_value
execute as @a[scores={species=014,species014-00=1..}] run attribute @s minecraft:player.entity_interaction_range modifier add species014_attack_range 0.5 add_value


# ghost hunger
effect give @a[tag=!GhostMonarch,scores={species=014,species014-00=1..,DamageTaken=1..}] hunger 1 255 true
effect give @a[tag=!GhostMonarch,scores={species=014,species014-00=1..}] hunger 5 2 true
scoreboard players add @a[scores={species=014,species014-00=1..,species014-01=1..}] species014-03 20
effect give @a[scores={species=014,species014-01=1..,Food=..18}] saturation 1 0 true
scoreboard players remove @a[scores={species=014,Food=19..,species014-01=1..}] species014-01 5
execute as @a[scores={species=014,species014-00=1..}] unless score @s Food >= @s species014-03 run scoreboard players remove @s species014-03 1
execute as @a[tag=!GhostMonarch,scores={species=014,species014-00=1..}] if score @s Food > @s species014-03 run effect give @s hunger 1 100 true
execute as @a[tag=!GhostMonarch,scores={species=014,species014-00=1..}] if score @s Food > @s species014-03 run effect give @s wither 1 4 true

effect give @a[tag=GhostMonarch,scores={species=014,Food=..18}] saturation 1 0 true

# score resets
scoreboard players remove @a[scores={species014-01=1..}] species014-01 2
scoreboard players set @a[scores={species=014,TimeSinceDeath=0}] species014-03 30
team join Ghosts @a[scores={species=014}]
# scoreboard players set @a[scores={species=014,species014-00=1..}] GhostTeam 10

# flight (1.20.5, retired)
# scoreboard players add @a[scores={species=014}] species014-02 0
# execute as @a[tag=NecrophantEligible,scores={species014-02=..299,InWater=0,species014-04=1..,species=014},predicate=ss_library:is_sprinting] at @s anchored eyes run playsound particle.soul_escape player @s ^ ^ ^3 2 0.1
# execute as @a[tag=NecrophantEligible,scores={species014-02=..299,InWater=0,species014-04=1..,species=014},predicate=ss_library:is_sprinting] at @s anchored eyes run particle campfire_cosy_smoke ^ ^ ^-1
# execute as @a[tag=NecrophantEligible,scores={species014-02=..299,InWater=0,species014-04=1..,species=014},predicate=ss_library:is_sprinting] at @s anchored eyes positioned ^ ^ ^0.3 if block ~ ~-1.6 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1.6 ~
# execute as @a[tag=NecrophantEligible,scores={species014-02=..299,InWater=0,species014-04=1..,species=014},predicate=ss_library:is_sprinting,x_rotation=90] at @s anchored eyes positioned ^ ^ ^0.5 if block ~ ~-1.6 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1.6 ~
# execute as @a[tag=NecrophantEligible,scores={species014-02=..299,InWater=0,species014-04=1..,species=014},predicate=ss_library:is_sprinting,x_rotation=-90] at @s anchored eyes positioned ^ ^ ^0.5 if block ~ ~-1.6 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1.6 ~
# scoreboard players add @a[tag=NecrophantEligible,scores={species014-04=1..,species014-02=..300,species=014},predicate=ss_library:is_sprinting] species014-02 2
# scoreboard players remove @a[scores={species014-02=1..,species=014}] species014-02 1
# scoreboard players set @a[scores={species014-02=1..,species=014,OnGround=1}] species014-02 0
# execute as @a[tag=NecrophantEligible,scores={species014-04=1..,species=014,OnGround=0},predicate=ss_library:is_sprinting] run attribute @s minecraft:generic.gravity modifier add f40f36f1-a2d5-4207-b20f-08b783e64cba -1 add_multiplied_total
# execute as @a[scores={species=014},predicate=ss_library:is_sneaking] run attribute @s minecraft:generic.gravity modifier remove f40f36f1-a2d5-4207-b20f-08b783e64cba