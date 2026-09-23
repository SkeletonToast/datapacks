$execute at @s anchored eyes positioned ^ ^ ^1.5 as @e[type=#arrows,distance=..1] at @s on origin unless entity @s[type=player,nbt={UUID:$(UUID)}] run data merge entity @n[tag=!BulletproofArrow,type=#arrows,distance=0] {Motion:[0.0d,0.1d,0.0d]}
$execute at @s anchored eyes positioned ^ ^ ^1.5 as @e[type=#arrows,distance=..1] at @s on origin unless entity @s[type=player,nbt={UUID:$(UUID)}] run tag @n[tag=!BulletproofArrow,type=#arrows,distance=0] add BulletproofArrow

scoreboard players set @s HasStatus 1