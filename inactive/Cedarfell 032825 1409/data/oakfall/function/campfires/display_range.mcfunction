scoreboard players add @n[type=minecraft:interaction,tag=Campfire,distance=0] of_campfire_display_range 1200
execute if block ~ ~ ~ campfire run function of_particles:campfire
execute if block ~ ~ ~ soul_campfire run function of_particles:soul_campfire
item modify entity @s[gamemode=!creative] weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]