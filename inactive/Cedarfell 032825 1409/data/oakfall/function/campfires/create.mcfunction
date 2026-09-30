function oakfall:campfires/kindle_particles

execute if items entity @s weapon.mainhand #minecraft:logs_that_burn run give @s campfire 1
execute if items entity @s weapon.mainhand #minecraft:logs unless items entity @s weapon.mainhand #minecraft:logs_that_burn run give @s soul_campfire 1
execute if items entity @s weapon.mainhand #minecraft:logs run item modify entity @s weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]