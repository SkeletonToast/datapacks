tag @s add Kindling

function ss_lib:fetch/item_selected {"s":"@s"}

playsound entity.ghast.shoot block @s ~ ~ ~ 0.3 1
playsound block.fire.ambient block @s

execute if predicate ss_lib:holding/shovel if block ~ ~ ~ minecraft:campfire run function echoes:campfires/particles_campfire
execute if predicate ss_lib:holding/shovel if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ campfire[lit=false]
execute if predicate ss_lib:holding/shovel if block ~ ~ ~ minecraft:soul_campfire run function echoes:campfires/particles_soul_campfire
execute if predicate ss_lib:holding/shovel if block ~ ~ ~ minecraft:soul_campfire run setblock ~ ~ ~ campfire[lit=false]
execute if predicate ss_lib:holding/shovel run kill @n[type=minecraft:interaction,tag=campfire,distance=0]

execute as @s[scores={ItemSelected=0,DayTime=13000..},predicate=ss_lib:is/sneaking,tag=!InCombat] unless entity @a[tag=!Kindling] run function echoes:player/sleeping_skip_night
execute as @s[scores={ItemSelected=0,DayTime=13000..},predicate=ss_lib:is/sneaking,tag=!InCombat] unless entity @a[tag=!Kindling] if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ campfire[lit=false]
execute as @s[scores={ItemSelected=0,DayTime=13000..},predicate=ss_lib:is/sneaking,tag=!InCombat] unless entity @a[tag=!Kindling] if block ~ ~ ~ minecraft:soul_campfire run setblock ~ ~ ~ soul_campfire[lit=false]

# lanterns
execute if items entity @s weapon.mainhand lantern run function echoes:campfires/kindle_particles
execute if items entity @s weapon.offhand lantern unless items entity @s weapon.mainhand * run function echoes:campfires/kindle_particles
execute if items entity @s weapon.mainhand lantern[count=1] run function echoes:campfires/lantern_item_replace {"hand":"main"}
execute if items entity @s weapon.mainhand lantern[!count=1] run function echoes:campfires/lantern_give {"hand":"main"}
execute if items entity @s weapon.offhand lantern[count=1] unless items entity @s weapon.mainhand * run function echoes:campfires/lantern_item_replace {"hand":"off"}
execute if items entity @s weapon.offhand lantern[!count=1] unless items entity @s weapon.mainhand * run function echoes:campfires/lantern_give {"hand":"off"}

# effect give @s[scores={Food=..6}] saturation 1 1 true

# execute as @s[scores={ItemSelected=0,fear=..1000}] run function echoes:campfires/set_spawn

# execute unless entity @s[predicate=ss_lib:is/sneaking] run function echoes:campfires/temp_update_old_item

execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] unless entity @s[predicate=ss_lib:is/sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"advanced",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function echoes:campfires/smith {"type":"advanced"}
execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] unless entity @s[predicate=ss_lib:is/sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"artisan",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function echoes:campfires/smith {"type":"artisan"}
execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] unless entity @s[predicate=ss_lib:is/sneaking] if items entity @s weapon.offhand *[custom_data~{weapon:{smithing:{type:"siege",soul_campfire:true}}}] unless items entity @s weapon.mainhand *[custom_data~{weapon:{special:true}}] if block ~ ~ ~ soul_campfire run function echoes:campfires/smith {"type":"siege"}

# execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] if items entity @s weapon.mainhand nether_wart run function echoes:nether/create_rift

execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] if items entity @s weapon.mainhand #minecraft:coals run function echoes:campfires/display_range

execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] if items entity @s weapon.mainhand #minecraft:logs if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ campfire[lit=false]
execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem] if items entity @s weapon.mainhand #minecraft:logs run function echoes:campfires/create

execute as @s[scores={ItemSelected=1},tag=!campfireUpdatedItem,predicate=ss_lib:is/sneaking] if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:cinderforged"}]] run function echoes:campfires/kindle_particles

execute as @s[level=1..] if items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:cinderforged"}],minecraft:damage~{damage:{min:1}}] run function ss_enchants:cinderforged/repair {"cost":"1"}

tag @s remove campfireUpdatedItem