execute if block ~ ~ ~ campfire[lit=false] run setblock ~ ~ ~ campfire[lit=true]
execute if block ~ ~ ~ soul_campfire[lit=false] run setblock ~ ~ ~ soul_campfire[lit=true]
execute if block ~ ~ ~ campfire run function of_particles:campfire
execute if block ~ ~ ~ soul_campfire run function of_particles:soul_campfire
playsound block.fire.ambient block @a ~ ~ ~ 1 0.5

kill @e[type=interaction,tag=Campfire,distance=0.5]
execute if block ~ ~ ~ campfire align xyz run summon interaction ~0.5 ~ ~0.5 {width:1.01f,height:0.5f,response:1b,Tags:["Campfire"]}
execute if block ~ ~ ~ soul_campfire align xyz run summon interaction ~0.5 ~ ~0.5 {width:1.01f,height:0.5f,response:1b,Tags:["Soul_Campfire","Campfire"]}