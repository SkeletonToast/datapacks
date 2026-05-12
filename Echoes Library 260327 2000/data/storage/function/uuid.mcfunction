scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy
scoreboard objectives add uuid_stored dummy
scoreboard objectives add uuid_modulus dummy

execute store result score @s uuid0 run data get entity @s UUID[0]
execute store result score @s uuid1 run data get entity @s UUID[1]
execute store result score @s uuid2 run data get entity @s UUID[2]
execute store result score @s uuid3 run data get entity @s UUID[3]

scoreboard players set @s uuid_stored 0

function storage:uuid0