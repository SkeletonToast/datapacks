data merge entity @s {Particle:{type:block,block_state:"minecraft:air"},Age:2147483647}
tag @s add EmberSprite
scoreboard players set @s Age -200

particle small_flame ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a
particle smoke ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a
fill ~ ~ ~ ~ ~ ~ light[level=8]