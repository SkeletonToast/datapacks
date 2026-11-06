execute as @s[level=5..] run function ss_species:s_002f_giveanchor
execute as @s[level=5..] run xp add @s -50 points
execute as @s[level=..4] run title @s actionbar [{"text":"Insufficient XP. You need 5 levels or more to generate another Anchor.","color":"red"}]