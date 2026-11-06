scoreboard players set @s CharacterSpecies 18
execute at @s if entity @a[distance=..0.5,name="KidInTheCorner"] run effect give @s wither 1 2 true
scoreboard players set @s ability003 1
scoreboard players set @s ability010 1
execute as @s[predicate=ss_species:in_forest] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}

scoreboard players set @s[predicate=ss_library:holding_hoe] species 10
execute unless entity @s[predicate=ss_library:holding_hoe] run scoreboard players set @s[scores={species=010}] species 18