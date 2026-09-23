summon creeper ~ ~ ~ {ExplosionRadius:-3,Fuse:0,ignited:true}

particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0 5
execute positioned ~ ~ ~ as @e[type=!#ss_lib:not_alive,distance=..3] run damage @s 10 echoes:explosion_no_cooldown