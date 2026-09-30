tag @s add Kindling

playsound entity.ghast.shoot block @s ~ ~ ~ 0.3 1
playsound block.fire.ambient block @s

effect give @s[scores={Food=..6}] saturation 1 1 true

# execute as @s[scores={ItemSelected=0,of_fear=..1000}] run function oakfall:campfires/set_spawn

execute unless entity @s[predicate=ss_lib:is_sneaking] run function oakfall:campfires/temp_update_old_item

execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] unless entity @s[predicate=ss_lib:is_sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"advanced",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function oakfall:campfires/smith {"type":"advanced"}
execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] unless entity @s[predicate=ss_lib:is_sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"artisan",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function oakfall:campfires/smith {"type":"artisan"}
execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] unless entity @s[predicate=ss_lib:is_sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"siege",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function oakfall:campfires/smith {"type":"siege"}

execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] if items entity @s weapon.mainhand nether_wart run function oakfall:nether/create_rift

execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] if items entity @s weapon.mainhand coal run function oakfall:campfires/display_range

execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem] if items entity @s weapon.mainhand #minecraft:logs run function oakfall:campfires/create

execute as @s[scores={ItemSelected=1},tag=!CampfireUpdatedItem,predicate=ss_lib:is_sneaking] if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:cinderforged"}]] run function oakfall:campfires/kindle_particles

tag @s remove CampfireUpdatedItem