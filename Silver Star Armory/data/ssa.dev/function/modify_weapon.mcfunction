function ss_armory:pre_modified_weapon

# attack properties
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_attributes","modifiers":[ \
    {"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":$(attack_damage),"operation":"add_value","slot":"mainhand"}, \
    {"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":$(attack_speed),"operation":"add_value","slot":"mainhand"}],"replace":true}]
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_attributes","modifiers":[ \
    {"id":"mainhand_entity_interaction_range","attribute":"minecraft:entity_interaction_range","amount":$(interaction_range),"operation":"add_value","slot":"mainhand"}],"replace":false}]
# custom model
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_model_data","strings":{"values":['$(model)'],"mode":"replace_all"}}]
# lore
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[$(lore)],"mode":"append"}]
# custom weapon data
$item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{weapon:{$(weapon_data)}}}]
# tool info removal
$execute if score $true true matches $(disable_tool) run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}]

function ss_armory:post_modified_weapon