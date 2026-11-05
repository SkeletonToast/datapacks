execute unless score @s sse.Knowledge matches 50.. run return fail

execute if score @s BaseMind matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseMind
execute if score @s BaseMind matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseMind
execute if score @s BaseTact matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseTact
execute if score @s BaseTact matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseTact

scoreboard players set @s BaseMind 0
scoreboard players set @s BaseTact 0