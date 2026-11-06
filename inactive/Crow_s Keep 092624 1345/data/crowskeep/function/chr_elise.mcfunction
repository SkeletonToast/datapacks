scoreboard players set @s CharacterSpecies 2
attribute @s minecraft:player.block_interaction_range modifier add chr_elise_block_reach 1 add_value
effect give @s[tag=AnchorEligible] saturation 1 0 true

effect give @s[predicate=ss_library:lightlevel_5_max,predicate=ss_library:holding_nonsword_tool] night_vision 1 0 true

give @s[scores={SoftRestOrRespawn=2}] iron_hoe[item_name='{"text":"Elise\'s Excavator"}',unbreakable={},rarity="rare",custom_data={quick_destroy:true},enchantments={levels:{"minecraft:silk_touch":1}},tool={damage_per_block:0,rules:[{speed:40,correct_for_drops:true,blocks:"#mineable/pickaxe"},{speed:10,correct_for_drops:true,blocks:"#mineable/shovel"},{speed:10,correct_for_drops:true,blocks:"#mineable/hoe"},{speed:15,correct_for_drops:true,blocks:"#mineable/axe"}]}]