execute if block ~ ~ ~ campfire[lit=false] run setblock ~ ~ ~ campfire[lit=true]
execute if block ~ ~ ~ soul_campfire[lit=false] run setblock ~ ~ ~ soul_campfire[lit=true]
execute if block ~ ~ ~ campfire run function echoes:campfires/particles_campfire
execute if block ~ ~ ~ soul_campfire run function echoes:campfires/particles_soul_campfire
playsound block.fire.ambient block @a ~ ~ ~ 1 0.5

kill @e[type=interaction,tag=campfire,distance=0.5]
execute if block ~ ~ ~ campfire align xyz run summon interaction ~0.5 ~ ~0.5 {width:1.01f,height:0.5f,response:1b,Tags:["campfire"]}
execute if block ~ ~ ~ soul_campfire align xyz run summon interaction ~0.5 ~ ~0.5 {width:1.01f,height:0.5f,response:1b,Tags:["soul_campfire","campfire"]}