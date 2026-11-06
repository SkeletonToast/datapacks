execute as @a[scores={species=008,ycoord=..0,Dimension=0}] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}
execute as @a[scores={species=008,Dimension=0},predicate=ss_species:in_caves] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}

effect give @a[scores={species=008,ycoord=..0,Dimension=0}] haste 5 2 true
effect give @a[scores={species=008,ycoord=..0,Dimension=0}] speed 5 2 true
effect give @a[scores={species=008},predicate=ss_library:holding_pickaxe] fire_resistance 1 0 true
effect give @a[scores={species=008},predicate=ss_library:holding_pickaxe] night_vision 11 0 true
execute as @a[scores={species=008}] unless entity @s[predicate=ss_library:holding_pickaxe] run effect clear @s night_vision

scoreboard players set @a[scores={species=008},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] species008-02 2
scoreboard players remove @a[scores={species008-02=1..}] species008-02 1
execute as @a[scores={species=008,species008-03=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:raw_iron
execute as @a[scores={species=008,species008-04=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:raw_gold
execute as @a[scores={species=008,species008-05=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:redstone 4
execute as @a[scores={species=008,species008-06=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:lapis_lazuli 2
execute as @a[scores={species=008,species008-07=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:emerald 64
execute as @a[scores={species=008,species008-07=1..}] unless entity @s[scores={species008-02=1..}] run xp add @s 10 levels
execute as @a[scores={species=008,species008-08=1..}] unless entity @s[scores={species008-02=1..}] run give @s minecraft:diamond
execute as @a[scores={species=008,species008-08=1..}] unless entity @s[scores={species008-02=1..}] run xp add @s 1 levels
execute as @a[scores={species=008,species008-09=1..}] unless entity @s[scores={species008-02=1..}] run xp add @s 1
effect give @a[scores={species=008,species008-09=1..}] haste 1 2 true
effect give @a[scores={species=008,species008-10=1..}] haste 1 1 true

execute as @a[scores={species=008},predicate=ss_library:holding_pickaxe] run attribute @s minecraft:player.mining_efficiency modifier add species008_mining_efficiency 1 add_multiplied_base
execute as @a[scores={species=008}] unless entity @s[predicate=ss_library:holding_pickaxe] run attribute @s minecraft:player.mining_efficiency modifier remove species008_mining_efficiency_1

# for some reason this doesn't work. it was meant to make strip mining faster
    # execute as @a[scores={species=008,species008-10=1..}] at @s anchored eyes run fill ^1 ^-1 ^1 ^-1 ^1 ^3 air destroy
    # execute as @a[scores={species=008,species008-09=1..}] at @s anchored eyes if block ^ ^-1 ^1 deepslate if block ^ ^ ^1 deepslate run fill ^ ^-1 ^1 ^ ^ ^1 air destroy
    # execute as @a[scores={species=008,species008-10=1..}] at @s anchored eyes if block ^ ^-1 ^1 stone if block ^ ^ ^1 stone run fill ^ ^-1 ^1 ^ ^ ^1 air destroy
    # [scores={species=008,species008-10=1..}]