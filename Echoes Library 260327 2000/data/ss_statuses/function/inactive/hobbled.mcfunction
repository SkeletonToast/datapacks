execute as @s[scores={hobbled_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#306e28","status":"Hobbled",append:""}

scoreboard players operation @s[scores={DamageTaken=1..}] hobbled_amount += @s DamageTaken
scoreboard players add @s[scores={OnGround=0}] hobbled_amount 3

scoreboard players set @s[scores={hobbled_amount=61..}] hobbled_amount 60

scoreboard players operation @s[scores={hobbled_amount=1..}] encumbered_amount += @s hobbled_amount

scoreboard players remove @s[scores={hobbled_amount=1..}] hobbled_amount 1

scoreboard players set @s hobbled_active 1