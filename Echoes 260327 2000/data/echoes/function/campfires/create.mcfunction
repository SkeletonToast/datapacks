function echoes:campfires/kindle_particles

execute if items entity @s weapon.mainhand #minecraft:logs_that_burn run give @s campfire[max_stack_size=1] 1
execute if items entity @s weapon.mainhand #minecraft:logs unless items entity @s weapon.mainhand #minecraft:logs_that_burn run give @s soul_campfire[max_stack_size=1] 1
execute if items entity @s weapon.mainhand #minecraft:logs run item modify entity @s weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]