execute unless entity @s[nbt={inGround:1b}] run scoreboard players set @s[tag=!Multishot] species004-07 60
execute unless entity @s[nbt={inGround:1b}] run scoreboard players set @s[tag=Multishot] species004-07 80
scoreboard players set @s[scores={Age=1..}] Age -400

data merge entity @s {PierceLevel:100b,pickup:0b}

scoreboard players remove @s[scores={species004-07=0..}] species004-07 1
execute at @s[scores={species004-07=1..}] run particle minecraft:large_smoke ~ ~ ~
execute at @s[scores={species004-07=1..}] run particle minecraft:campfire_cosy_smoke ~ ~ ~
execute at @s[scores={species004-07=40}] run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 1
execute at @s[scores={species004-07=..40}] run particle lava ~ ~ ~
execute at @s[scores={species004-07=..0}] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~ ~ ~
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~1 ~ ~
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~ ~1 ~
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~ ~ ~1
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~-1 ~ ~
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~ ~-1 ~
execute at @s[scores={species004-07=..0}] run particle minecraft:explosion_emitter ~ ~ ~-1
execute at @s[scores={species004-07=..0},tag=!Multishot] run summon creeper ~ ~ ~ {ExplosionRadius:-3,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
execute at @s[scores={species004-07=..0}] run summon creeper ~ ~ ~ {ExplosionRadius:-1,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
execute at @s[scores={species004-07=..0}] as @e[distance=..5] run damage @s 10 explosion
kill @s[scores={species004-07=..0}]