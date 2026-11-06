scoreboard players set @s ability029 1
scoreboard players set @s species 18
scoreboard players set @s[scores={ability029-00=0},predicate=ss_library:holding_axe,tag=ArcaneTomeFifthSlot] ability029-00 3
execute as @s[predicate=ss_library:holding_axe,tag=ArcaneTomeFifthSlot] unless entity @s[scores={ability029-00=3}] run scoreboard players set @s ability029-00 1