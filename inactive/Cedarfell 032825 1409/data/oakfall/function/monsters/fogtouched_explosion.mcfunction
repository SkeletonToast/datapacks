effect give @s resistance 1 4 true
particle explosion_emitter ~ ~ ~
summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:-3,ignited:1b,Fuse:0b}
execute as @e[distance=0.1..5,tag=!Fogtouched] run damage @s 2 player_explosion by @n[tag=Fogtouched]

scoreboard players add @s of_fogtouched_attack_cooldown 20