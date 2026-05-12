# execute if block ~ ~ ~ campfire run summon item ~ ~ ~ {Item:{id:"minecraft:campfire"}}
# execute if block ~ ~ ~ soul_campfire run summon item ~ ~ ~ {Item:{id:"minecraft:soul_campfire"}}
# fill ~ ~ ~ ~ ~ ~ campfire[lit=false] replace campfire
# fill ~ ~ ~ ~ ~ ~ soul_campfire[lit=false] replace soul_campfire
execute if block ~ ~ ~ campfire run function echoes:campfires/particles_campfire
execute if block ~ ~ ~ soul_campfire run function echoes:campfires/particles_soul_campfire
playsound block.wood.place block @a ~ ~ ~ 2 1
kill @n[type=minecraft:interaction,tag=campfire]