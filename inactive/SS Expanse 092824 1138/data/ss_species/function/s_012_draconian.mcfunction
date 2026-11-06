scoreboard players set @a[scores={species=012,Dimension=2}] ability007 1
scoreboard players set @a[scores={species=012}] ability009 1
tag @a[scores={species=012,Dimension=2}] add UnlockedParrying

effect give @a[scores={species=012,Food=..18,Dimension=2}] saturation 1 0 true
execute as @a[scores={species=012,Dimension=2}] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}
effect give @a[scores={species=012,FallFlying=1}] strength 1 1 true
execute as @a[scores={species=012,trait002=1..,trait002-01=4..,FallFlying=1,species012-01=4}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:firework_rocket

scoreboard players add @a[scores={species=012}] species012-01 0

tellraw @a[scores={species=012,species012-01=0,Dimension=2}] [{"text":"By traveling here, you have proven your worth, and earned your wings in the End. To earn usage of your wings in all dimensions, defeat the Dragon.","color":"yellow"}]
execute as @a[scores={species=012,species012-01=0,Dimension=2}] run function ss_traits:t_002f_wings {"format":"give @s"}
scoreboard players add @a[scores={species=012,species012-01=0,Dimension=2}] species012-01 1

tellraw @a[scores={species=012,species012-01=1},advancements={end/kill_dragon=true}] [{"text":"You have gained usage of your fledgling wings in all dimensions. To strengthen your wings in the End, locate and enter an End City.","color":"gold"}]
scoreboard players add @a[scores={species=012,species012-01=1},advancements={end/kill_dragon=true}] species012-01 1

tellraw @a[scores={species=012,species012-01=2},advancements={end/find_end_city=true}] [{"text":"You have strengthened your wings within the End. To strengthen your wings in all dimensions, resurrect and defeat the Dragon once again.","color":"red"}]
execute as @a[scores={species=012,species012-01=2},advancements={end/find_end_city=true}] run function ss_traits:t_002f_strong_wings {"format":"give @s"}
scoreboard players add @a[scores={species=012,species012-01=2},advancements={end/find_end_city=true}] species012-01 1

# wings
scoreboard players set @a[scores={species=012,species012-01=1,Dimension=2,trait002=0}] trait002 1

scoreboard players set @a[scores={species=012,species012-01=2..,trait002=0}] trait002 1
scoreboard players set @a[scores={species=012,species012-01=2,Dimension=2,trait002=..1}] trait002 2

scoreboard players set @a[scores={species=012,species012-01=3..,trait002=..2}] trait002 3
scoreboard players set @a[scores={species=012,species012-01=3,Dimension=2,trait002=..3}] trait002 4

scoreboard players set @a[scores={species=012,species012-01=4,trait002=..3}] trait002 4

# hadeus fight
# tellraw @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true,end/kill_dragon=true}] [{"text":"As your final test, you will face the true might of Hadeus and her Swarm. May the Dracomother have mercy on you.","color":"dark_purple"}]
# execute as @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true,end/kill_dragon=true}] run function ss_species:s_012f_hadeus_fight_start
advancement revoke @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true}] only end/kill_dragon
# execute as @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true,end/kill_dragon=false}] run function ss_species:s_012f_hadeus_fight

tellraw @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true,end/kill_dragon=true}] [{"text":"You have truly proven your worth. You have now earned permanent use of your strengthened wings.","color":"dark_red"}]
scoreboard players add @a[scores={species=012,species012-01=3},advancements={end/respawn_dragon=true,end/kill_dragon=true}] species012-01 1

title @a[scores={species=012,species012-01=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["speciesstone"]}}}}] actionbar [{"text":"Next Quest: ","color":"gray"},{"text":"Enter the End","color":"yellow"}]
title @a[scores={species=012,species012-01=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["speciesstone"]}}}}] actionbar [{"text":"Next Quest: ","color":"gray"},{"text":"Kill the Dragon","color":"gold"}]
title @a[scores={species=012,species012-01=2},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["speciesstone"]}}}}] actionbar [{"text":"Next Quest: ","color":"gray"},{"text":"Find an End City","color":"red"}]
title @a[scores={species=012,species012-01=3},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["speciesstone"]}}}}] actionbar [{"text":"Next Quest: ","color":"gray"},{"text":"Resurrect and kill the Dragon once more","color":"dark_red"}]