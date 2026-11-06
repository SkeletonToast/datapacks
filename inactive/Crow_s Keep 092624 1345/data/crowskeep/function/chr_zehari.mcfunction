scoreboard players set @s CharacterSpecies 11
scoreboard players add @s chr-008 0

scoreboard players add @s[scores={chr-008=..199}] chr-008 1
execute as @s[scores={chr-008=200..,InWater=2},nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["chr_Zehari"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["chr_Zehari"]}}}]}] run clear @s trident[custom_data={Tags:["chr_Zehari"]}]
execute as @s[scores={chr-008=200..,InWater=2}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with trident[item_name='{"text":"Zehari Boost"}',unbreakable={show_in_tooltip:false},custom_data={Tags:["chr_Zehari"]},enchantments={levels:{"minecraft:riptide":5},show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"generic.attack_damage",amount:-100,operation:"add_value",id:"927a554b-7319-4f22-a4e4-1a33ec7422ff",slot:"mainhand"}],show_in_tooltip:false}] 1
scoreboard players add @s[scores={chr-008=200,InWater=2},nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["chr_Zehari"]}}}]}] chr-008 1
scoreboard players add @s[scores={chr-008=201,InWater=2},advancements={crowskeep:zehari/usingtrident=true}] chr-008 1
execute at @s[scores={chr-008=202},advancements={crowskeep:zehari/usingtrident=false}] run playsound entity.ghast.shoot player @a
scoreboard players set @s[scores={chr-008=202},advancements={crowskeep:zehari/usingtrident=false}] chr-009 20
scoreboard players set @s[scores={chr-008=202},advancements={crowskeep:zehari/usingtrident=false}] chr-008 0

execute at @s[scores={chr-009=1..}] run particle explosion_emitter
execute at @s[scores={chr-009=1..}] run particle bubble
execute at @s[scores={chr-009=1..}] anchored eyes run particle bubble ^ ^ ^-1
execute at @s[scores={chr-009=1..}] anchored eyes run particle bubble ^ ^ ^-2
execute at @s[scores={chr-009=1..}] anchored eyes as @e[type=!#ss_library:not_alive,distance=..1.5,tag=!chr_Zehari] run damage @s 15 player_attack by @p[tag=chr_Zehari,distance=0]
execute at @s[scores={chr-009=1..}] anchored eyes as @e[type=!#ss_library:not_alive,distance=..1.5,tag=!chr_Zehari] run scoreboard players set @a[distance=0,tag=chr_Zehari] chr-009 0
execute at @s[scores={chr-009=1..}] as @e[type=!#ss_library:not_alive,distance=..3,tag=!chr_Zehari] run damage @s 5 player_attack by @p[tag=chr_Zehari,distance=0]

scoreboard players remove @s[scores={chr-009=1..}] chr-009 1
scoreboard players set @s[scores={InWater=..1}] chr-009 0
advancement revoke @s only crowskeep:zehari/usingtrident
clear @s[scores={chr-008=..199}] trident[custom_data={Tags:["chr_Zehari"]}]
clear @s[scores={InWater=..1}] trident[custom_data={Tags:["chr_Zehari"]}]