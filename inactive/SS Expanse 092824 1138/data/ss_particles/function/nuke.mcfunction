particle explosion_emitter ~ ~ ~ 10 10 10 1 1000 force @a
particle lava ~ ~ ~ 10 10 10 1 1000 force @a
execute at @e[type=!#ss_library:not_alive,distance=..25] run playsound entity.ender_dragon.death master @a
execute at @e[type=!#ss_library:not_alive,distance=..25] run playsound entity.generic.explode master @a