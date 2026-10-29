execute unless score @s sse.Physique matches 50.. run return fail

execute if score @s BaseStrength matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseStrength
execute if score @s BaseStrength matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseStrength
execute if score @s BaseDexterity matches 1.. run scoreboard players operation @s EchoLevelsUnspent += @s BaseDexterity
execute if score @s BaseDexterity matches ..-1 run scoreboard players operation @s EchoLevelsUnspent -= @s BaseDexterity

scoreboard players set @s BaseStrength 0
scoreboard players set @s BaseDexterity 0