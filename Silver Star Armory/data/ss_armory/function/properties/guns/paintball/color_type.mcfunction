scoreboard players set @s PaintballType -1
execute if predicate {"condition":"minecraft:random_chance","chance":0.500} run scoreboard players set @s PaintballType -2
execute if predicate {"condition":"minecraft:random_chance","chance":0.333} run scoreboard players set @s PaintballType -3
execute if predicate {"condition":"minecraft:random_chance","chance":0.250} run scoreboard players set @s PaintballType -4
execute if predicate {"condition":"minecraft:random_chance","chance":0.200} run scoreboard players set @s PaintballType -5
execute if predicate {"condition":"minecraft:random_chance","chance":0.167} run scoreboard players set @s PaintballType -6
execute if predicate {"condition":"minecraft:random_chance","chance":0.143} run scoreboard players set @s PaintballType -7
execute if predicate {"condition":"minecraft:random_chance","chance":0.125} run scoreboard players set @s PaintballType -8
scoreboard players operation @s PaintballType *= @s -1

# title @s title [""]
# title @s subtitle [{"score":{"name":"*","objective":"PaintballHitsDealt"},"color":"#0fb300"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"PaintballHitsTaken"},"color":"#b30000"}]