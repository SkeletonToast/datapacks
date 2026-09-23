scoreboard players add @n[type=minecraft:interaction,tag=campfire,distance=0] campfire_display_range 1200
execute if block ~ ~ ~ campfire run function echoes:campfires/particles_campfire
execute if block ~ ~ ~ soul_campfire run function echoes:campfires/particles_soul_campfire
item modify entity @s[gamemode=!creative] weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]