scoreboard players set @a[scores={species=022}] ability015 1
execute as @a[scores={species=022}] run attribute @s minecraft:generic.burning_time base set 2
tag @a[scores={species=022,Dimension=1}] add UnlockedParrying

execute as @a[scores={species=022,Dimension=1}] unless entity @s[predicate=ss_library:is_sneaking] run scoreboard players set @s ability007 1
execute as @a[scores={species=022,Dimension=1}] run scoreboard players set @s incendiary_timer 1

effect give @a[scores={species=022}] minecraft:fire_resistance 1 0 true

# waterproof tag
tag @a[scores={species=022}] remove Waterproof
tag @a[scores={species=022},predicate=ss_library:holding_heated_object] add Waterproof
tag @a[scores={species=022},nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1}}}}}] add Waterproof
tag @a[scores={species=022},nbt={Inventory:[{Slot:103b,components:{"minecraft:enchantments":{levels:{"minecraft:respiration":3}}}}]}] add Waterproof

scoreboard players set @s[scores={wet_timer=1..},tag=Waterproof] wet_timer 0

execute as @a[scores={species=022,Dimension=1}] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}
effect give @a[scores={species=022,InWater=0},predicate=ss_library:is_on_fire] strength 1 1 true
effect give @a[scores={species=022,InWater=0},predicate=ss_library:is_on_fire] resistance 1 1 true
effect give @a[scores={species=022,InWater=0},predicate=ss_library:is_on_fire] speed 1 1 true
# the Fire nbt tag seems to change when entering water. the InWater tag requirement patches this, since it won't give you these effects if you're in water.
    # it's not a perfect solution, so look into it more if you get the chance.

execute as @a[scores={species=022},predicate=ss_library:is_on_fire] at @s as @a[distance=..10] unless entity @s[scores={species=022}] run effect give @s weakness 1 1 true

execute as @a[scores={species=022}] at @s if block ~ ~ ~ lava run scoreboard players add @s species022-04 1
execute as @a[scores={species=022}] at @s if block ~ ~ ~ lava_cauldron run scoreboard players add @s species022-04 1
effect give @a[scores={species=022,species022-04=100..}] minecraft:instant_health 1 0 true
scoreboard players set @a[scores={species=022,species022-04=100..}] species022-04 0

# damage in water
effect give @a[scores={species=022,InWater=1..},tag=!Waterproof] wither 1 1 true
effect give @a[scores={species=022,wet_timer=1..,InWater=0},tag=!Waterproof] wither 1 1 true