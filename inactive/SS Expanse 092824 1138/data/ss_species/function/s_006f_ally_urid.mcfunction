scoreboard players add @a[scores={species006-urid=..-1}] species006-urid 1
execute on attacker run scoreboard players set @s species006-urid -100
execute as @a[distance=..10] at @s on attacker if entity @s[scores={species=006}] run scoreboard players set @p[distance=0] species006-urid -100

tag @a[distance=..10,scores={species=006}] add FeldpsariAllyIneligible
tag @a[distance=..10,scores={species006-urid=..-1}] add FeldpsariAllyIneligible

scoreboard players operation @a[distance=..10,tag=!FeldpsariAllyIneligible] species006-urid = @s species006-urid