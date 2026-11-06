execute unless entity @s[nbt={inGround:1b}] run scoreboard players set @s[tag=!Multishot] class004-02 60
execute unless entity @s[nbt={inGround:1b}] run scoreboard players set @s[tag=Multishot] class004-02 80
scoreboard players set @s[scores={Age=1..}] Age -400

data merge entity @s {PierceLevel:100b,NoGravity:1b,pickup:0b}
data merge entity @s[scores={InWater=1..}] {NoGravity:0b}

scoreboard players remove @s[scores={class004-02=0..}] class004-02 1
execute at @s[scores={class004-02=1..}] run particle minecraft:end_rod ~ ~ ~
execute at @s[scores={class004-02=..40}] run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.1 5 normal @a
execute at @s[scores={class004-02=38}] run playsound minecraft:block.portal.trigger player @a ~ ~ ~ 0.4 2
# execute at @s[scores={class004-02=..0}] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Type:1,Trail:1b,Colors:[I;16760106,16733952,16711680,11743532,7684931]},{Type:1,Trail:1b,Colors:[I;16760106,16733952,16711680,11743532,7684931]},{Type:1,Trail:1b,Colors:[I;16760106,16733952,16711680,11743532,7684931]},{Type:1,Trail:1b,Colors:[I;16760106,16733952,16711680,11743532,7684931]},{Type:1,Trail:1b,Colors:[I;16760106,16733952,16711680,11743532,7684931]}]}}}}
execute at @s[scores={class004-02=..0}] run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 0.4 2
execute at @s[scores={class004-02=..0}] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute at @s[scores={class004-02=..0}] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal @a
execute at @s[scores={class004-02=..0},tag=!Multishot] run summon creeper ~ ~ ~ {ExplosionRadius:-2,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
execute at @s[scores={class004-02=..0}] run summon creeper ~ ~ ~ {ExplosionRadius:-1,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}
execute at @s[scores={class004-02=..0}] as @e[distance=..5] run damage @s 5 explosion
# execute at @s[scores={class004-02=..0}] at @a[distance=..5] positioned ~ ~ ~ run function ss_particles:enchant_particle_ring
# execute at @s[scores={class004-02=..0}] at @a[distance=..5] positioned ~ ~0.5 ~ run function ss_particles:enchant_particle_ring
# execute at @s[scores={class004-02=..0}] at @a[distance=..5] positioned ~ ~1 ~ run function ss_particles:enchant_particle_ring
# execute at @s[scores={class004-02=..0}] at @a[distance=..5] positioned ~ ~1.5 ~ run function ss_particles:enchant_particle_ring
execute at @s[scores={class004-02=..0}] run effect give @e[type=!#ss_library:not_alive,scores={Age=2..,class004=0},distance=..5] slowness 5 1 true
execute at @s[scores={class004-02=..0}] run effect give @e[type=!#ss_library:not_alive,scores={Age=2..,class004=0},distance=..5] nausea 7 0 true
kill @s[scores={class004-02=..0}]