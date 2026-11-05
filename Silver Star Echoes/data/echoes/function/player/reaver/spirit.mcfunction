execute unless score @s sse.Passion matches 50.. run return fail

execute if score @s BaseSoul matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseSoul
execute if score @s BaseSoul matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseSoul
execute if score @s BaseVitality matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseVitality
execute if score @s BaseVitality matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseVitality

scoreboard players set @s BaseSoul 0
scoreboard players set @s BaseVitality 0