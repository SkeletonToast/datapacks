scoreboard players set @a[scores={species=011}] ability005 1
scoreboard players set @a[scores={species=011}] ability011 1
execute as @a[scores={species=011}] run attribute @s minecraft:generic.burning_time base set 0.5
tag @a[scores={species=011,InWater=2}] add UnlockedParrying
tag @a[scores={species=011,wet_timer=1..}] add UnlockedParrying
execute as @a[scores={species=011},predicate=ss_library:holding_trident] run attribute @s minecraft:generic.attack_damage modifier add species011_trident_attack_damage 6 add_value
execute as @a[scores={species=011}] unless entity @s[predicate=ss_library:holding_trident] run attribute @s minecraft:generic.attack_damage modifier remove species011_trident_attack_damage

execute as @a[scores={species=011}] unless entity @s[scores={species011-05=1..}] run scoreboard players set @s species011-05 0
execute as @a[scores={species=011,species011-05=0},predicate=ss_species:in_biome_hot] run function ss_statuses:lethargic {"duration":"1","amplifier":"0"}

scoreboard players add @a[scores={species=011,species011-05=..12000,InWater=1..}] species011-05 30
scoreboard players add @a[scores={species=011,species011-05=..12000,wet_timer=1..,InWater=0}] species011-05 30
scoreboard players set @a[scores={species=011,species011-04=1..}] species011-05 3600
scoreboard players set @a[scores={species=011}] species011-04 0
scoreboard players remove @a[scores={species=011,species011-05=1..},predicate=ss_species:in_biome_hot] species011-05 1
tellraw @a[scores={species=011,species011-05=1}] {"color":"gray","text":"You're feeling a bit dehydrated."}

effect give @a[scores={species=011,species011-02=1..}] saturation 3 0 true
scoreboard players set @a[scores={species011-02=1..}] species011-02 0

execute as @e[type=minecraft:trident,nbt={inGround:1b},tag=!PassidianTridentSummon] at @s on origin if entity @s[scores={species=011}] run tp @n[type=trident,distance=0] @s
execute as @e[type=minecraft:trident,scores={Age=140},tag=!PassidianTridentSummon] at @s on origin if entity @s[scores={species=011}] run tp @n[type=trident,distance=0] @s

# maybe add effects based on biomes? idk could b cool