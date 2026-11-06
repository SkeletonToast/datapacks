# # chain: some sort of big archer bonus maybe
#     # like arcane archers but just regular arrows and draining regular xp
# # gold: major boosts when holding a gold tool, and will auto-mend gold tools if they have mending
# # diamond: 
# # netherite: complete knockback resistance

# # leather
# effect clear @a[scores={ability026=1..},predicate=ss_library:wearing_full_leather_armor] glowing

# # chain
# effect give @a[scores={ability026=1..,ability026-01=1..},predicate=ss_library:wearing_full_leather_armor] strength 2 0 true
# execute as @a[level=1..,scores={ability026=1..},predicate=ss_library:wearing_full_leather_armor,predicate=ss_library:holding_bow_or_crossbow] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run xp add @s -1
# execute as @a[level=1..,scores={ability026=1..},predicate=ss_library:wearing_full_leather_armor,predicate=ss_library:holding_bow_or_crossbow] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] run give @s tipped_arrow{CustomPotionColor:16711680,display:{Name:'[{"text":"Emergency Arrow","italic":false}]'}}
# execute as @a[scores={ability026=1..}] run kill @e[type=arrow,nbt={Color:16711680,inGround:1b}]
# scoreboard players remove @a[scores={ability026-01=1..}] ability026-01 1

# # gold
# effect give @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor] fire_resistance 10 0 true
# effect give @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor] resistance 1 1 true
# effect give @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor,predicate=ss_species:holding_golden_weapon] strength 1 1 true
# effect give @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor,predicate=ss_species:holding_golden_weapon] haste 1 1 true
# execute as @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor,predicate=ss_abilities:holding_golden_gear] unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:mending"}]}}}] run enchant @s mending

# execute as @a[scores={ability026=1..},predicate=ss_library:wearing_full_golden_armor,nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:mending"}]}}},predicate=ss_abilities:holding_golden_gear] unless entity @s[nbt={SelectedItem:{tag:{Damage:1}}}] unless entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] at @s unless entity @e[type=experience_orb,distance=..5] run summon experience_orb ~ ~ ~ {Value:1}

# # iron
# execute as @a[scores={ability026=1..},predicate=ss_library:wearing_full_iron_armor] run attribute @s minecraft:generic.attack_damage modifier add c198780b-1303-4fe0-bbb1-b2548a5056d1 3 add
# execute as @a[scores={ability026=1..}] unless entity @s[predicate=ss_library:wearing_full_iron_armor] run attribute @s minecraft:generic.attack_damage modifier remove c198780b-1303-4fe0-bbb1-b2548a5056d1