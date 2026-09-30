execute unless entity @s[scores={dissident_active=-1..}] run scoreboard players set @s dissident_active -1

tellraw @s[scores={dissident_active=-1}] [{"color":"gray","text":"- The ramblings of a madman fill your ears. You find yourself repulsed by the "},{"color":"#f5be57","text":"Dissident"},{"color":"gray","text":"."}]

scoreboard players set @s dissident_active 1