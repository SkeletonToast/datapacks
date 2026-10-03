scoreboard players set @s generic_a 7

#  execute if score @s Strength > @s generic_a run scoreboard players operation @s generic_a = @s Strength
# execute if score @s Dexterity > @s generic_a run scoreboard players operation @s generic_a = @s Dexterity
#   execute if score @s Resolve > @s generic_a run scoreboard players operation @s generic_a = @s Resolve
#  execute if score @s Vitality > @s generic_a run scoreboard players operation @s generic_a = @s Vitality
#      execute if score @s Mind > @s generic_a run scoreboard players operation @s generic_a = @s Mind
#      execute if score @s Tact > @s generic_a run scoreboard players operation @s generic_a = @s Tact
#      execute if score @s Soul > @s generic_a run scoreboard players operation @s generic_a = @s Soul

scoreboard players set @s sse.difficulty 1

# scoreboard players set @s[scores={generic_a=21..}] sse.difficulty 2
# scoreboard players set @s[scores={generic_a=41..}] sse.difficulty 3
# scoreboard players set @s[scores={generic_a=61..}] sse.difficulty 4
# scoreboard players set @s[scores={generic_a=71..}] sse.difficulty 5
# scoreboard players set @s[scores={generic_a=91..}] sse.difficulty 6
# scoreboard players set @s[scores={generic_a=121..}] sse.difficulty 7

function echoes:stats/echo_level

scoreboard players set @s[scores={EchoLevel=11..}] sse.difficulty 2
scoreboard players set @s[scores={EchoLevel=91..}] sse.difficulty 3
scoreboard players set @s[scores={EchoLevel=171..}] sse.difficulty 4
scoreboard players set @s[scores={EchoLevel=251..}] sse.difficulty 5
scoreboard players set @s[scores={EchoLevel=331..}] sse.difficulty 6
scoreboard players set @s[scores={EchoLevel=431..}] sse.difficulty 7